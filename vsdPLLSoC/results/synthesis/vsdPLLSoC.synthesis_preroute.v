module vsdPLLSoC ();

 obs obs_li1 ();
 chip_io PADFRAME (.CLK_pll(clk_pll),
    .EN_CP_pll(en_cp_pll),
    .EN_VCO_pll(en_vco_pll),
    .PORB(porb),
    .REF_CLK_pll(ref_clk_pll),
    .VCO_IN_pll(vco_in_pll));
 avsdpll_1v8 PLL (.ENb_CP(en_cp_pll),
    .CLK(clk_pll),
    .ENb_VCO(en_vco_pll),
    .VCO_IN(vco_in_pll),
    .REF(ref_clk_pll));
 simple_por POR (.porb_h(porb));
endmodule
