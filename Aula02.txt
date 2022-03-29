--Exemplo 1
01. library ieee;
02. use ieee.std_logic_1164.all;
03. entity porta_and is
04. port(a, b, c: in std_logic;
05.            x: out std_logic);
06. end  porta_and;
07. architecture arq of porta_and is
08. begin --comentário qualquer
09.	x <= a and b and c;
10. end arq;


--Exemplo 2
01. library ieee;
02. use ieee.std_logic_1164.all;
03. entity ccto_basico is
04. port(a, b, c: in std_logic;
05.            x: out std_logic);
06. end  ccto_basico;
07. architecture arq of ccto_basico is
08. begin
09.     --colocar aqui a função lógica
10. end arq;


--Exemplo 2 preenchido
01. library ieee;
02. use ieee.std_logic_1164.all;
03. entity ccto_basico is
04. port(a, b, c: in std_logic;
05.            x: out std_logic);
06. end  ccto_basico;
07. architecture arq of ccto_basico is
08. begin
09.     x <= not(not(a) or not(b)) and b and c;
10. end arq;


--Exemplo 3
01. library ieee;
02. use ieee.std_logic_1164.all;
03. entity ccto_basico is
04. port(a, b, c: in std_logic;
05.            x: out std_logic); 06. end  ccto_basico;
07. architecture arq of ccto_basico is  08. signal s0, s1, s2, s3: std_logic;  09. begin
09.    s0 <= not(a); s1 <= not(b); s2 <= s0 or s1;
10.      s3 <= not(s2); x <= s3 and b and c;
11. end arq;


--Exemplo 4, Solução (y = a´b´ + ab)
01. library ieee;
02. use ieee.std_logic_1164.all;
03. entity comparador is
04. port(a, b: in std_logic;
05.         y: out std_logic);
06. end  comparador;
07. architecture arq_comp of comparador is
08. begin
09.    y <= (not(a) and not(b)) or (a and b);
10. end arq_comp;