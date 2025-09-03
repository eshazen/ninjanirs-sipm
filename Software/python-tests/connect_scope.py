import pyvisa
rm = pyvisa.ResourceManager()
myi = rm.open_resource("USB0::10893::5990::MY56311514::0::INSTR")
print(myi.query('*IDN?'))
print(myi.query(':MEAS:VAV? DISP,CHAN1'))

      
