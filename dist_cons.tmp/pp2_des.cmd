File {
   * input files:
   Grid=   "n1_fps.tdr"
   * output files:
   Plot=   "n2_des.tdr"
   Output= "n2_des.log"
}

Physics(Material="Silicon"){   
   
 Traps (
(FixedCharge Conc=1e16 Level EnergyMid=0 fromMidBandGap SpatialShape=Gaussian
SpaceMid=(0.5,0.5) SpaceSig=(0.05,0.05))
)

}


Solve {

}



Plot {
        Potential Electricfield
        Doping eDensity hDensity SpaceCharge
        eQuasiFermi hQuasiFermi
      eTrappedCharge hTrappedCharge
      eGapStatesRecombination hGapStatesRecombination 
}

