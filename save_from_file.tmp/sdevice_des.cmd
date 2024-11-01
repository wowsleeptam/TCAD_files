File {
   * input files:
   Grid=   "@tdr@"
   * output files:
   Plot=   "@tdrdat@"
   Output= "@log@"
}

Physics(Material="Silicon"){   
   
 Traps (
(FixedCharge Conc=1e16 EnergyMid=0 SpatialShape=Gaussian
SpaceMid=(0.5,0.5, 0.5) SpaceSig=(0.05,0.05,0.05))
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