# การแสดงผลตัวเลขด้วย 7-Segment Display บน Tinkercad

## 1. หลักการทำงานของ 7-Segment Display

### 1.1 โครงสร้างพื้นฐาน

- ประกอบด้วย 7 เซ็กเมนต์ LED (a, b, c, d, e, f, g)
- มี 1 จุดทศนิยม (DP)
- มี 2 ประเภทหลัก:
  1. Common Cathode (แคโทดร่วม)
  2. Common Anode (แอโนดร่วม)

### 1.2 การเชื่อมต่อกับไมโครคอนโทรลเลอร์

- ต้องใช้วงจรแปลงสัญญาณดิจิทัลเป็นสัญญาณ LED
- ใช้ IC 7447 หรือ 74HC4511 เป็นตัวแปลงสัญญาณ BCD เป็น 7-Segment

## 2. วงจรใน Tinkercad

### 2.1 อุปกรณ์ที่ต้องใช้

1. IC 74HC4511 (BCD to 7-Segment Decoder)
2. 7-Segment Display
3. ตัวต้านทาน 220Ω (สำหรับจำกัดกระแส LED)
4. สายเชื่อมต่อ

### 2.2 การเชื่อมต่อ

```
Counter Output (4-bit) ─► 74HC4511 ─► 7-Segment Display
```

### 2.3 ขั้นตอนการต่อวงจร

1. ต่อขา BCD (A, B, C, D) ของ 74HC4511 กับเอาต์พุตของ Counter
2. ต่อขา Segment (a-g) ของ 74HC4511 เข้ากับ 7-Segment Display
3. ต่อ VCC และ GND ให้ถูกต้อง

## 3. รหัสการแสดงผลตัวเลข

### 3.1 ตารางการแสดงผล

| BCD Input | Displayed Number | Segment Pattern |
| --------- | ---------------- | --------------- |
| 0000      | 0                | abcdef          |
| 0001      | 1                | bc              |
| 0010      | 2                | abdeg           |
| 0011      | 3                | abcdg           |
| 0100      | 4                | bcfg            |
| 0101      | 5                | acdfg           |
| 0110      | 6                | acdefg          |
| 0111      | 7                | abc             |
| 1000      | 8                | abcdefg         |
| 1001      | 9                | abcdfg          |

## 4. ตัวอย่างโค้ดใน Tinkercad

```cpp
// ตัวอย่างโค้ดสำหรับการควบคุม 7-Segment
void setup() {
  // กำหนดขาสำหรับ 7-Segment
  pinMode(A, OUTPUT);
  pinMode(B, OUTPUT);
  pinMode(C, OUTPUT);
  pinMode(D, OUTPUT);
}

void loop() {
  // แสดงตัวเลข 0-9
  for(int i = 0; i < 10; i++) {
    displayNumber(i);
    delay(1000);  // หน่วงเวลา 1 วินาที
  }
}

void displayNumber(int num) {
  // แปลงเลขเป็นสัญญาณดิจิทัล
  digitalWrite(A, num & 0x1);
  digitalWrite(B, num & 0x2);
  digitalWrite(C, num & 0x4);
  digitalWrite(D, num & 0x8);
}
```

## 5. ข้อควรระวัง

- ตรวจสอบการต่อขาให้ถูกต้อง
- ใช้ตัวต้านทานจำกัดกระแส
- ระวังการต่อ VCC และ GND

## 6. แหล่งเรียนรู้เพิ่มเติม

- [Tinkercad Circuits Tutorial](https://www.tinkercad.com)
- [7-Segment Display Guide](https://learn.sparkfun.com/tutorials/7-segment-display-hook-up-guide)
