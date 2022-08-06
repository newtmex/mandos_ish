(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i64)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32)))
  (type (;10;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func (;0;) (type 7)))
  (import "env" "getNumArguments" (func (;1;) (type 1)))
  (import "env" "signalError" (func (;2;) (type 3)))
  (import "env" "mBufferAppend" (func (;3;) (type 4)))
  (import "env" "bigIntPow" (func (;4;) (type 2)))
  (import "env" "mBufferAppendBytes" (func (;5;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;6;) (type 4)))
  (import "env" "mBufferGetLength" (func (;7;) (type 6)))
  (import "env" "mBufferGetByteSlice" (func (;8;) (type 8)))
  (import "env" "checkNoPayment" (func (;9;) (type 0)))
  (import "env" "mBufferSetBytes" (func (;10;) (type 5)))
  (import "env" "bigIntMul" (func (;11;) (type 2)))
  (import "env" "mBufferStorageStore" (func (;12;) (type 4)))
  (func (;13;) (type 1) (result i32)
    (local i32)
    call 14
    local.tee 0
    i64.const 10
    call 0
    local.get 0)
  (func (;14;) (type 1) (result i32)
    (local i32)
    i32.const 1048624
    i32.const 1048624
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;15;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call 3
    drop)
  (func (;16;) (type 6) (param i32) (result i32)
    (local i32)
    call 14
    local.set 1
    i32.const -14
    i64.const 18
    call 0
    local.get 1
    local.get 0
    i32.const -14
    call 4
    local.get 1)
  (func (;17;) (type 1) (result i32)
    (local i32)
    call 14
    local.tee 0
    i64.const 0
    call 0
    local.get 0)
  (func (;18;) (type 9) (param i32)
    (local i32)
    local.get 0
    i32.load8_u offset=4
    local.set 1
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.and
      if  ;; label = @2
        i32.const 1048628
        i32.load
        local.tee 1
        i32.const 10001
        i32.ge_u
        br_if 1 (;@1;)
        local.get 0
        i32.load
        i32.const 1048632
        local.get 1
        call 5
        drop
        i32.const 1048628
        i32.const 0
        i32.store
        i32.const 1058632
        i32.const 0
        i32.store8
      end
      return
    end
    call 19
    unreachable)
  (func (;19;) (type 0)
    call 26
    unreachable)
  (func (;20;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    call 14
    local.tee 2
    local.get 0
    call 6
    drop
    local.get 3
    local.get 2
    call 7
    local.tee 0
    i32.const 24
    i32.shl
    local.get 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    call 21
    local.get 1
    i32.load8_u offset=4
    local.set 0
    local.get 1
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 1
          i32.and
          local.tee 0
          if  ;; label = @4
            local.get 2
            call 7
            local.tee 5
            i32.const 10000
            i32.const 1048628
            i32.load
            local.tee 4
            i32.sub
            i32.gt_u
            br_if 2 (;@2;)
            local.get 3
            local.get 4
            local.get 4
            local.get 5
            i32.add
            local.tee 4
            call 22
            local.get 2
            i32.const 0
            local.get 3
            i32.load offset=4
            local.get 3
            i32.load
            call 8
            drop
            i32.const 1048628
            local.get 4
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.load
          local.get 2
          call 15
        end
        local.get 1
        local.get 0
        i32.store8 offset=4
        br 1 (;@1;)
      end
      local.get 1
      call 18
      local.get 1
      i32.load
      local.get 2
      call 15
      local.get 1
      i32.load8_u offset=4
      local.get 1
      local.get 0
      i32.store8 offset=4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1048628
      i32.const 0
      i32.store
      i32.const 1058632
      i32.const 0
      i32.store8
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;21;) (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        if  ;; label = @3
          i32.const 10000
          i32.const 1048628
          i32.load
          local.tee 3
          i32.sub
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 6
          i32.const 8
          i32.add
          local.get 3
          local.get 2
          local.get 3
          i32.add
          local.tee 8
          call 22
          local.get 6
          i32.load offset=8
          local.set 0
          block  ;; label = @4
            local.get 2
            local.get 6
            i32.load offset=12
            local.tee 3
            i32.eq
            if  ;; label = @5
              local.get 3
              i32.const 15
              i32.gt_u
              if  ;; label = @6
                local.get 0
                i32.const 0
                local.get 0
                i32.sub
                i32.const 3
                i32.and
                local.tee 4
                i32.add
                local.set 5
                local.get 4
                if  ;; label = @7
                  local.get 1
                  local.set 2
                  loop  ;; label = @8
                    local.get 0
                    local.get 2
                    i32.load8_u
                    i32.store8
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 2
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    local.get 5
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 5
                local.get 3
                local.get 4
                i32.sub
                local.tee 3
                i32.const -4
                i32.and
                local.tee 7
                i32.add
                local.set 0
                block  ;; label = @7
                  local.get 1
                  local.get 4
                  i32.add
                  local.tee 4
                  i32.const 3
                  i32.and
                  if  ;; label = @8
                    local.get 7
                    i32.const 0
                    i32.le_s
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const 3
                    i32.shl
                    local.tee 2
                    i32.const 24
                    i32.and
                    local.set 9
                    local.get 4
                    i32.const -4
                    i32.and
                    local.tee 10
                    i32.const 4
                    i32.add
                    local.set 1
                    i32.const 0
                    local.get 2
                    i32.sub
                    i32.const 24
                    i32.and
                    local.set 11
                    local.get 10
                    i32.load
                    local.set 2
                    loop  ;; label = @9
                      local.get 5
                      local.get 2
                      local.get 9
                      i32.shr_u
                      local.get 1
                      i32.load
                      local.tee 2
                      local.get 11
                      i32.shl
                      i32.or
                      i32.store
                      local.get 1
                      i32.const 4
                      i32.add
                      local.set 1
                      local.get 5
                      i32.const 4
                      i32.add
                      local.tee 5
                      local.get 0
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    br 1 (;@7;)
                  end
                  local.get 7
                  i32.const 0
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 4
                  local.set 1
                  loop  ;; label = @8
                    local.get 5
                    local.get 1
                    i32.load
                    i32.store
                    local.get 1
                    i32.const 4
                    i32.add
                    local.set 1
                    local.get 5
                    i32.const 4
                    i32.add
                    local.tee 5
                    local.get 0
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 3
                i32.const 3
                i32.and
                local.set 3
                local.get 4
                local.get 7
                i32.add
                local.set 1
              end
              local.get 3
              if  ;; label = @6
                local.get 0
                local.get 3
                i32.add
                local.set 2
                loop  ;; label = @7
                  local.get 0
                  local.get 1
                  i32.load8_u
                  i32.store8
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 0
                  local.get 2
                  i32.lt_u
                  br_if 0 (;@7;)
                end
              end
              br 1 (;@4;)
            end
            call 19
            unreachable
          end
          i32.const 1048628
          local.get 8
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call 5
        drop
        br 1 (;@1;)
      end
      local.get 0
      call 18
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call 5
      drop
    end
    local.get 6
    i32.const 16
    i32.add
    global.set 0)
  (func (;22;) (type 2) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        i32.const 10000
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        local.get 1
        i32.sub
        i32.store offset=4
        local.get 0
        local.get 1
        i32.const 1048632
        i32.add
        i32.store
        return
      end
      call 19
      unreachable
    end
    call 19
    unreachable)
  (func (;23;) (type 10) (param i64 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 0
    i64.const 56
    i64.shl
    i64.or
    local.get 0
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 0
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 21
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;24;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 9
    call 1
    if  ;; label = @1
      i32.const 1048576
      i32.const 25
      call 2
      unreachable
    end
    call 14
    local.tee 3
    i32.const 1048601
    i32.const 6
    call 10
    drop
    call 13
    call 16
    call 13
    call 16
    local.set 5
    call 13
    call 16
    local.set 6
    call 13
    call 16
    local.set 1
    i32.const -14
    i64.const 2
    call 0
    local.get 1
    local.get 1
    i32.const -14
    call 11
    call 17
    local.set 7
    call 17
    local.set 8
    i32.const 1058632
    i32.load8_u
    i32.eqz
    if  ;; label = @1
      i32.const 1058632
      i32.const 1
      i32.store8
      i32.const 1048628
      i32.const 0
      i32.store
      i32.const 1
      local.set 2
    end
    call 14
    local.tee 9
    i32.const 1048608
    i32.const 0
    call 10
    drop
    local.get 0
    local.get 2
    i32.store8 offset=4
    local.get 0
    local.get 9
    i32.store
    i64.const 1
    local.get 0
    call 23
    i64.const 1
    local.get 0
    call 23
    local.get 0
    call 20
    local.get 5
    local.get 0
    call 20
    local.get 6
    local.get 0
    call 20
    local.get 1
    local.get 0
    call 20
    local.get 7
    local.get 0
    call 20
    local.get 8
    local.get 0
    call 20
    i64.const 10
    local.get 0
    call 23
    i64.const 0
    local.get 0
    call 23
    i64.const 12000
    local.get 0
    call 23
    local.get 0
    i32.load
    local.set 1
    local.get 0
    local.get 0
    i32.load8_u offset=4
    i32.store8 offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call 18
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load8_u offset=12
    if  ;; label = @1
      i32.const 1048628
      i32.const 0
      i32.store
      i32.const 1058632
      i32.const 0
      i32.store8
    end
    local.get 3
    local.get 1
    call 12
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;25;) (type 0)
    nop)
  (func (;26;) (type 0)
    i32.const 1048608
    i32.const 14
    call 2
    unreachable)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1058636))
  (global (;2;) i32 (i32.const 1058640))
  (export "memory" (memory 0))
  (export "init" (func 24))
  (export "callBack" (func 25))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "wrong number of argumentsreward\00panic occurred")
  (data (;1;) (i32.const 1048624) "\9c\ff\ff\ff"))
