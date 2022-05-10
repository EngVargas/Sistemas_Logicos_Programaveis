--Exemplo 2: half-adder
01-library ieee;
02-use ieee.std_logic_1164.all;
03-entity ccto is
04-port(
05-   a, b: in std_logic;
06-   s, c: out std_logic);
07-end ccto;
08-architecture arq of ccto is
09-begin
10-   s <= a xor b;
11-   c <= a and b;
12-end;


--Exemplo 2: Benchmark
01-library ieee;
02-use ieee.std_logic_1164.all;
03-entity tb_ccto is
04-end tb_ccto;
05-architecture arq of tb_ccto is
06-signal ta, tb, ts, tc: std_logic;
07-begin
08-   uut: entity work.ccto(arq)
09-   port map(a => ta, b => tb, s => ts, c => tc);
10-   process begin
11-     ta <= '0'; tb <= '0'; wait for 10 ns;
12-     ta <= '0'; tb <= '1'; wait for 10 ns;
13-     ta <= '1'; tb <= '0'; wait for 10 ns;
14-     ta <= '1'; tb <= '1'; wait for 10 ns;
15-   end process;
16-end arq;