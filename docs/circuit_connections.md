# การต่อวงจรตัวนับไบนารี 4 บิตด้วย IC 74HC73

## การเชื่อมต่อ IC 74HC73

IC 74HC73 มีขาสัญญาณดังนี้:

1. CLK1 - Clock input for flip-flop 1
2. J1 - J input for flip-flop 1
3. K1 - K input for flip-flop 1
4. CLR1 - Clear input for flip-flop 1 (active LOW)
5. Q1 - Q output for flip-flop 1
6. Q1' - Inverted Q output for flip-flop 1
7. GND - Ground
8. Q2' - Inverted Q output for flip-flop 2
9. Q2 - Q output for flip-flop 2
10. CLR2 - Clear input for flip-flop 2 (active LOW)
11. K2 - K input for flip-flop 2
12. J2 - J input for flip-flop 2
13. CLK2 - Clock input for flip-flop 2
14. VCC - Power supply (+5V)

## การต่อวงจรตัวนับ 4 บิต

1. ใช้ IC 74HC73 จำนวน 2 ตัว (รวม 4 Flip-Flops)
2. การต่อสัญญาณ:
   - ต่อขา J และ K ทุกตัวเข้ากับ VCC (logic 1)
   - ต่อขา CLR ทุกตัวเข้ากับ VCC ผ่านตัวต้านทาน Pull-up
   - ต่อขา Q ของ Flip-Flop แต่ละตัวเข้ากับขา CLK ของตัวถัดไป
   - ต่อสัญญาณนาฬิกาหลักเข้าที่ขา CLK ของ Flip-Flop ตัวแรก

## การทำงาน

1. เมื่อมีสัญญาณนาฬิกาเข้ามา Flip-Flop ตัวแรกจะสลับสถานะ (Toggle)
2. เอาต์พุต Q ของแต่ละตัวจะเป็นสัญญาณนาฬิกาให้กับตัวถัดไป
3. ผลลัพธ์คือการนับเลขไบนารีจาก 0000 ถึง 1111 (0-15)
