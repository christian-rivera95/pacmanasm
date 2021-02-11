#include <iostream>
#include <easm.h>
#include <rlutil.h>

extern "C" ErrorCode handleSyscall(uint32_t *regs, void *mem, MemoryMap *mem_map)
{
    unsigned v0 = regs[Register::v0];

    switch (v0)
    {
        case 20:
        {
            int a0 = regs[Register::a0];
            int a1 = regs[Register::a1];
            regs[Register::v0] = a0 + a1;
            return ErrorCode::Ok;
        }
        case 21:
        {
            int a0 = regs[Register::a0];
            rlutil::setBackgroundColor(a0);
            return ErrorCode::Ok;
        }
        case 22:
        {
            int a0 = regs[Register::a0];
            rlutil::setColor(a0);
            return ErrorCode::Ok;
        }
        case 23:
        {
            rlutil::cls();
            return ErrorCode::Ok;
        }
        default:
            if (v0 > 20 && v0 <= 50)
            {
                std::cout << "Syscall: " << v0 << '\n' << std::flush;
                return ErrorCode::Ok;
            }
            else
            {
                return ErrorCode::SyscallNotImplemented;
            }
    }
}