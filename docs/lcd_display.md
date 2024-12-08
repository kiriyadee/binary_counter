# การแสดงผลจำนวนนับบนจอ LCD ใน Tinkercad

## 1. ประเภทของจอ LCD

- LCD 16x2 (16 ตัวอักษร 2 บรรทัด)
- LCD 20x4 (20 ตัวอักษร 4 บรรทัด)
- รองรับการแสดงผลทั้งตัวเลข ตัวอักษร และสัญลักษณ์

## 2. อุปกรณ์ที่ต้องใช้

1. LCD Display Module
2. Potentiometer (ปรับความคมชัด)
3. Arduino/Microcontroller
4. Jumper Wires
5. Breadboard

## 3. การเชื่อมต่อ LCD กับ Arduino

### 3.1 ขาสัญญาณหลัก

- RS (Register Select)
- E (Enable)
- D4-D7 (Data Pins)
- VCC (5V)
- GND (Ground)

### 3.2 แผนผังการเชื่อมต่อ

```
Arduino Pins → LCD Pins
D12 → RS
D11 → E
D5-D2 → D4-D7
5V → VCC
GND → GND
```

## 4. โค้ดตัวอย่างการแสดงผล

```cpp
#include <LiquidCrystal.h>

// กำหนดขาเชื่อมต่อ LCD
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  // เริ่มต้นการทำงานของ LCD
  lcd.begin(16, 2);  // LCD 16x2
}

void loop() {
  // แสดงจำนวนนับ
  for(int count = 0; count <= 99; count++) {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Counter:");
    lcd.setCursor(0, 1);
    lcd.print(count);
    delay(1000);  // หน่วงเวลา 1 วินาที
  }
}
```

## 5. เทคนิคการแสดงผล

### 5.1 การจัดตำแหน่ง

- `lcd.setCursor(column, row)`
- column: 0-15
- row: 0-1

### 5.2 ฟังก์ชันพื้นฐาน

- `lcd.clear()` ล้างหน้าจอ
- `lcd.print()` พิมพ์ข้อความ
- `lcd.setCursor()` วางเคอร์เซอร์

## 6. ข้อควรระวัง

- ตรวจสอบการเชื่อมต่อขาให้ถูกต้อง
- ใช้ Potentiometer ปรับความคมชัด
- ระวังแรงดันไฟฟ้า

## 7. การขยายความสามารถ

- แสดงผลหลายบรรทัด
- แสดงค่าทางสถิติ
- เพิ่มเอฟเฟกต์การแสดงผล

## 8. แหล่งเรียนรู้เพิ่มเติม

- [Arduino LCD Tutorial](https://www.arduino.cc/en/Tutorial/LiquidCrystalDisplay)
- [Tinkercad Circuits Guide](https://www.tinkercad.com)
