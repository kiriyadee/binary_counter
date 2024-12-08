# 4-Bit Binary Counter using JK Flip-Flops

โครงการนี้แสดงการออกแบบวงจรตัวนับไบนารีขนาด 4 บิตโดยใช้ JK Flip-Flops

## รายละเอียดโครงการ

โครงการนี้ประกอบด้วย:
1. การจำลองวงจรด้วย Tinkercad Circuits ใช้ IC 74HC73
2. โมเดล VHDL สำหรับการจำลองการทำงาน
3. โมเดล Verilog สำหรับการจำลองการทำงาน

## โครงสร้างโปรเจค

```
binary_counter/
├── src/
│   ├── vhdl/         # VHDL source files
│   └── verilog/      # Verilog source files
└── docs/             # เอกสารและไดอะแกรม
```

## การใช้งาน IC 74HC73

IC 74HC73 เป็น Dual JK Flip-Flops with Asynchronous Clear มีคุณสมบัติดังนี้:
- แรงดันไฟเลี้ยง: 2V - 6V
- มี 2 JK Flip-Flops ในตัวถัง
- มีขา Clear แบบ Asynchronous
- ทำงานที่ความถี่สูงสุด 41 MHz (ที่ 6V)
