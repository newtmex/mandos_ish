#![no_std]

use elrond_wasm::{derive_imports, imports};

imports!();
derive_imports!();

pub type ProfileRank<M> = BigUint<M>;

impl<M: ManagedTypeApi> ProfileRankTrait<M> for ProfileRank<M> {}

pub trait ProfileRankTrait<M: ManagedTypeApi> {
    fn decimals() -> u32 {
        18
    }

    /// Defined here for disambiguity
    fn default() -> ProfileRank<M> {
        BigUint::from(10u32).pow(Self::decimals())
    }

    /// Wrapper for `default()`
    fn new() -> ProfileRank<M> {
        Self::default()
    }

    fn set_for(num: u64) -> ProfileRank<M> {
        BigUint::from(num).mul(Self::default())
    }
}

#[derive(TopEncode, TopDecode, TypeAbi)]
pub struct Reward<M>
where
    M: ManagedTypeApi,
{
    pub id: u64,
    pub batch_period: u64,
    pub profile_rank: ProfileRank<M>,
    pub egld_staked: BigUint<M>,
    pub egld_to_reward: BigUint<M>,
    pub reward_boost: BigUint<M>,
    pub reward_gained: BigUint<M>,
    pub reward_credited: BigUint<M>,
    pub epochs_locked: u64,
    pub epochs_credited: u64,
    // pub eol: u64,
}
#[elrond_wasm::contract]
pub trait MandosIsh {
    #[init]
    fn init(&self) {
        self.reward().set(Reward {
            id: 1,
            batch_period: 1,
            profile_rank: ProfileRank::new(),
            egld_staked: BigUint::from(10u32).pow(18),
            egld_to_reward: BigUint::from(10u32).pow(18),
            reward_boost: BigUint::from(10u32).pow(18).mul(2u32),
            reward_gained: BigUint::zero(),
            reward_credited: BigUint::zero(),
            epochs_locked: 10,
            epochs_credited: 0,
            // eol: 12000,
        })
    }

    #[storage_mapper("reward")]
    fn reward(&self) -> SingleValueMapper<Reward<Self::Api>>;
}
