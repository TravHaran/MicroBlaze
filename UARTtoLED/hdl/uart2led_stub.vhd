-------------------------------------------------------------------------------
-- uart2led_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity uart2led_stub is
  port (
    rzq : inout std_logic;
    mcbx_dram_we_n : out std_logic;
    mcbx_dram_udqs : inout std_logic;
    mcbx_dram_udm : out std_logic;
    mcbx_dram_ras_n : out std_logic;
    mcbx_dram_ldm : out std_logic;
    mcbx_dram_dqs : inout std_logic;
    mcbx_dram_dq : inout std_logic_vector(15 downto 0);
    mcbx_dram_clk_n : out std_logic;
    mcbx_dram_clk : out std_logic;
    mcbx_dram_cke : out std_logic;
    mcbx_dram_cas_n : out std_logic;
    mcbx_dram_ba : out std_logic_vector(1 downto 0);
    mcbx_dram_addr : out std_logic_vector(12 downto 0);
    UART_SOUT : out std_logic;
    UART_SIN : in std_logic;
    RESET : in std_logic;
    LEDs_pin : out std_logic_vector(7 downto 0);
    CLK_100MHZ : in std_logic
  );
end uart2led_stub;

architecture STRUCTURE of uart2led_stub is

  component uart2led is
    port (
      rzq : inout std_logic;
      mcbx_dram_we_n : out std_logic;
      mcbx_dram_udqs : inout std_logic;
      mcbx_dram_udm : out std_logic;
      mcbx_dram_ras_n : out std_logic;
      mcbx_dram_ldm : out std_logic;
      mcbx_dram_dqs : inout std_logic;
      mcbx_dram_dq : inout std_logic_vector(15 downto 0);
      mcbx_dram_clk_n : out std_logic;
      mcbx_dram_clk : out std_logic;
      mcbx_dram_cke : out std_logic;
      mcbx_dram_cas_n : out std_logic;
      mcbx_dram_ba : out std_logic_vector(1 downto 0);
      mcbx_dram_addr : out std_logic_vector(12 downto 0);
      UART_SOUT : out std_logic;
      UART_SIN : in std_logic;
      RESET : in std_logic;
      LEDs_pin : out std_logic_vector(7 downto 0);
      CLK_100MHZ : in std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of uart2led : component is "user_black_box";

begin

  uart2led_i : uart2led
    port map (
      rzq => rzq,
      mcbx_dram_we_n => mcbx_dram_we_n,
      mcbx_dram_udqs => mcbx_dram_udqs,
      mcbx_dram_udm => mcbx_dram_udm,
      mcbx_dram_ras_n => mcbx_dram_ras_n,
      mcbx_dram_ldm => mcbx_dram_ldm,
      mcbx_dram_dqs => mcbx_dram_dqs,
      mcbx_dram_dq => mcbx_dram_dq,
      mcbx_dram_clk_n => mcbx_dram_clk_n,
      mcbx_dram_clk => mcbx_dram_clk,
      mcbx_dram_cke => mcbx_dram_cke,
      mcbx_dram_cas_n => mcbx_dram_cas_n,
      mcbx_dram_ba => mcbx_dram_ba,
      mcbx_dram_addr => mcbx_dram_addr,
      UART_SOUT => UART_SOUT,
      UART_SIN => UART_SIN,
      RESET => RESET,
      LEDs_pin => LEDs_pin,
      CLK_100MHZ => CLK_100MHZ
    );

end architecture STRUCTURE;

