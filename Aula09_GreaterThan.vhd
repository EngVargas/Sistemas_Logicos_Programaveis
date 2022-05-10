01- library ieee;
02- use std_logic_1164.all;

03- entity ccto is
04- port(a, b: in std_logic_vector(3 downto 0);
05-      y: out std_logic);
06- end ccto;

07- architecture arq of ccto is
08-    begin
09-      y <= ‘1’ when a > b else
10-           ‘0’;
11-    end arq;