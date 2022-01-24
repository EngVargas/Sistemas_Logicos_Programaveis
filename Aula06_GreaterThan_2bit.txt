-- Code your design here
-- Código VHDL para greater than de 2 bits
library ieee;
use ieee.std_logic_1164.all;

entity gt2bit is
port(a, b: in std_logic_vector(1 downto 0);
		y: out std_logic);
end gt2bit;

architecture arq_gt2bit of gt2bit is
	signal s0, s1, s2: std_logic;
begin
	s0 <= a(1) and not(b(1));
    s1 <= a(0) and not(b(1)) and not(b(0));
    s2 <= a(1) and a(0) and not(b(0));
    y <= s0 or s1 or s2;
end arq_gt2bit;


-- Code your testbench here
-- Testbench para simulação
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_gt2bit is
end tb_gt2bit;

architecture arq_tb_gt2bit of tb_gt2bit is
	signal ta,	tb: std_logic_vector(1 downto 0);
    signal 		ty: std_logic;
begin
	uut: entity work.gt2bit(arq_gt2bit)
		port map(a => ta, b => tb,  y => ty);
	process
      variable i, j: integer := 0;
      begin
  		for i in 0 to 3 loop
			for j in 0 to 3 loop
				ta <= std_logic_vector(to_unsigned(i,2));
				tb <= std_logic_vector(to_unsigned(j,2));
				wait for 10 ns;
			end loop;
		end loop;
    end process;
end arq_tb_gt2bit;