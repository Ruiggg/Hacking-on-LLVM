# RUN: llvm-mc -triple s390x-linux-gnu -show-encoding %s | FileCheck %s

#CHECK: stmg	%r0, %r0, 0             # encoding: [0xeb,0x00,0x00,0x00,0x00,0x24]
#CHECK: stmg	%r0, %r15, 0            # encoding: [0xeb,0x0f,0x00,0x00,0x00,0x24]
#CHECK: stmg	%r14, %r15, 0           # encoding: [0xeb,0xef,0x00,0x00,0x00,0x24]
#CHECK: stmg	%r15, %r15, 0           # encoding: [0xeb,0xff,0x00,0x00,0x00,0x24]
#CHECK: stmg	%r0, %r0, -524288       # encoding: [0xeb,0x00,0x00,0x00,0x80,0x24]
#CHECK: stmg	%r0, %r0, -1            # encoding: [0xeb,0x00,0x0f,0xff,0xff,0x24]
#CHECK: stmg	%r0, %r0, 0             # encoding: [0xeb,0x00,0x00,0x00,0x00,0x24]
#CHECK: stmg	%r0, %r0, 1             # encoding: [0xeb,0x00,0x00,0x01,0x00,0x24]
#CHECK: stmg	%r0, %r0, 524287        # encoding: [0xeb,0x00,0x0f,0xff,0x7f,0x24]
#CHECK: stmg	%r0, %r0, 0(%r1)        # encoding: [0xeb,0x00,0x10,0x00,0x00,0x24]
#CHECK: stmg	%r0, %r0, 0(%r15)       # encoding: [0xeb,0x00,0xf0,0x00,0x00,0x24]
#CHECK: stmg	%r0, %r0, 524287(%r1)   # encoding: [0xeb,0x00,0x1f,0xff,0x7f,0x24]
#CHECK: stmg	%r0, %r0, 524287(%r15)  # encoding: [0xeb,0x00,0xff,0xff,0x7f,0x24]

	stmg	%r0,%r0,0
	stmg	%r0,%r15,0
	stmg	%r14,%r15,0
	stmg	%r15,%r15,0
	stmg	%r0,%r0,-524288
	stmg	%r0,%r0,-1
	stmg	%r0,%r0,0
	stmg	%r0,%r0,1
	stmg	%r0,%r0,524287
	stmg	%r0,%r0,0(%r1)
	stmg	%r0,%r0,0(%r15)
	stmg	%r0,%r0,524287(%r1)
	stmg	%r0,%r0,524287(%r15)
