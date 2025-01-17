-- Code your design here
-- C�digo VHDL para comparador de 1-bit
library ieee;
use ieee.std_logic_1164.all;

entity comparador is
port(a, b: in std_logic;
	y: out std_logic);
end entity;

architecture arq_comparador of comparador is
begin
	y <= (not(a) and not(b)) or (a and b);
end arq_comparador;





-- Code your testbench here
-- Testbench para simula��o
library ieee;
use ieee.std_logic_1164.all;

entity tb_comparador is
end tb_comparador;

architecture arq_tb_comparador of tb_comparador is
	signal ta, tb, ty: std_logic;
begin
	uut: entity work.comparador(arq_comparador)
		port map(a => ta, b => tb, y => ty);
	process begin
  		ta <= '0'; tb <= '0'; wait for 10 ns;
    	ta <= '0'; tb <= '1'; wait for 10 ns;
      	ta <= '1'; tb <= '0'; wait for 10 ns;
        ta <= '1'; tb <= '1'; wait for 10 ns;
	end process;
end arq_tb_comparador;