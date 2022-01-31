-- Code your design here
-- Código VHDL para comparador de 1-bit
library ieee;
use ieee.std_logic_1164.all;

entity CodificadorPrioridade is
port(a: in std_logic_vector(3 downto 0);
	y: 	out std_logic_vector(2 downto 0));
end entity;

architecture arq_CodificadorPrioridade of CodificadorPrioridade is
begin
	y <=	"100" when (a(3) = '1') else
    		"011" when (a(2) = '1') else
            "010" when (a(1) = '1') else
            "001" when (a(0) = '1') else
            "000";
end architecture;



-- Code your testbench here
-- Testbench para simulação
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_CodificadorPrioridade is
end entity;

architecture arq_tb_CodificadorPrioridade of tb_CodificadorPrioridade is
	signal ta: std_logic_vector(3 downto 0);
    signal ty: std_logic_vector(2 downto 0);
begin
	uut: entity work.CodificadorPrioridade(arq_CodificadorPrioridade)
		port map(a => ta, y => ty);
	process
    	variable i: integer := 0;
    begin
  		for i in 0 to 15 loop
				ta <= std_logic_vector(to_unsigned(i,4));
				wait for 10 ns;
		end loop;
	end process;
end architecture;