- **MOS Saturation meaning**
  - Saturation describes the region of operation where the channel is pinched off near the drain
  - This typically corresponds to high values of Vds, the necessary condition for n channel is $$V_{DS}>V_{GS}-V_T$$
  - If the above expression is in equality then pinch off happens right at the drain. As Vds increases, the pinch off region advances progressively towards the source
  - To a first approximation, Id remains unchanged as Vds increases, and the device acts as a constant current source/sink
  - In fact, as Vds increaes, the resultant shortening of the channel slightly enhances the conductance, and brings about a gradual increase in Id
  - The near constant current is a useful characteristic in linear circuits
  - Also, a FET connected with D and G shorted together is by definition in saturation, and may be used as a load in place of a resistor, also occupies less space
- **Bipolar devices**
  - Saturation is observed when base potential Vbe causes a large collector current to flow
  - Assuming a load is connected between collector and supply, Vce falls to a low limiting value Vce(sat) typically around 0.2V
  - And is definitely less than the value of Vbe which is about -0.8V
  - In this situation, Vcb <0 for NPN, and the c-b junction becomes forward biased
  - The collector injects electronic charge into the base, accounting for some excess base current
  - In bipolar, saturation gives a clearly defined low Vce with a typically higher than usual Vbe and Ib, and a large Ie
  - The low Vce can be used to DEFINE A LOGIC LEVEL
  - The excess charge stored in the base has to be removed before the device can leave saturation and stop conducting
  - This takes around 50ns and limits switching speed available with saturated bipolar logic
  - A bipolar device in this state can also be used as an effective low side switch as its power dissapation is low
- **SRAM cell**
  - 	The RAM cell consists of a pair of cross-coupled inverters whose inputs may be assessed by means of switching transistors controlled by the word signal
  - The cell can be in either of the two stable states
  - RAM cell may assume only two states and if isolated from external influences it will retain its state while power is applied
  - This state may be changed, i.e. data written by driving the vertical bit'and bit lines to new complementary values
  - And operating the switching transistors by setting the word lines high
  - The RAM cell inverters must be sufficiently weak by design, that the bit line signals can override the signals currently being output by the inverters and switch them into a new state when necessary
  - **It follows also that the driver stages from which the input data is taken must have much greater drive capability**
  - Once this has been achieved, the word lines are reset to low, disengaging the switching transistors
  - To read out data, both bit lines are preset to precisely the same voltage, typically the mean of Vlow and Vhigh.
  - The lines are connected to sensitive comparators, which will initially indicate the equivalence of the signals on these lines
  - The switching transistors are then enabled. One inverter will drive its corresponding bit line low, the other high by a few milivolts
  - This is because the inverters are designed with low drive power
  - The comparator output will then indicate logic 0 or a according to the sense of the pertubations introduced to the bit lines by the RAM cell
  - To achieve necessary weak inverters, these are typically implemented using CMOS devises with low values of W/L, leading to low device conductances
  - Additional circuit elements required are:
    - Address decoder to select a specific horizontal row of cells to be manipulated
    - Column decoder, to sepect the output from a specific sense amplifier from the bank, and connect it to the output pin/s (also for write operations to connect the input data to the chosen set of bit lines)
    - Bank of sensitive comparators. Design of these is a challenge since they must combine sub-mV sensiticity with high slew rate to read out data fast 