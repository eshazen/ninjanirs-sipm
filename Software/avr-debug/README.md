# avr-debug

Interactive debug/operation tool for the board

```
   L d   - set LED
   B d   - set BOOST_ENA
   VR d  - set INA201 reset
   VS d  - set LT3014 shutdown
   B d   - set BOOST_ENA
   P d   - set digital pot
   R d   - raw SPI write/read
   D d   - debug write/read
   S pha pol - set SPI params
```

Power-up sequence:

```
   >p 500
   >b 1
   >vs 0
```

