package com.scut.psd.design.factory;

public class AlgorithmFactory {

   public static AlgorithmProduct createAlgorithmProduct(String algorithmType){
	   AlgorithmProduct  algorithmProduct = null;
	   switch (algorithmType) {
			case "pyulear":
				algorithmProduct = new PyulearAlgorithm();
				break;
			case "pburg":
				algorithmProduct = new PburgAlgorithm();
				break;
			case "pcov":
				algorithmProduct = new PcovAlgorithm();
				break;
			case "pmcov":
				algorithmProduct = new PmcovAlgorithm();
				break;
		}
	return algorithmProduct;
   }
}
