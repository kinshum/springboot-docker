package com.ikats.common.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class ExchangeUtil {

	private static List<String> CurrencyList = new ArrayList<String>();
	static{
		System.out.println("Currency List Size: "+CurrencyList.size() );
		if(CurrencyList.size()==0){
			CurrencyList.add("AED");
			CurrencyList.add("ALL");
			CurrencyList.add("ANG");
			CurrencyList.add("ARS");
			CurrencyList.add("AUD");
			CurrencyList.add("AUD");
			CurrencyList.add("AWG");
			CurrencyList.add("BBD");
			CurrencyList.add("BDT");
			CurrencyList.add("BGN");
			CurrencyList.add("BHD");
			CurrencyList.add("BIF");
			CurrencyList.add("BMD");
			CurrencyList.add("BND");
			CurrencyList.add("BOB");
			CurrencyList.add("BRL");
			CurrencyList.add("BSD");
			CurrencyList.add("BTN");
			CurrencyList.add("BWP");
			CurrencyList.add("BYR");
			CurrencyList.add("BZD");
			CurrencyList.add("CAD");
			CurrencyList.add("CHF");
			CurrencyList.add("CLP");
			CurrencyList.add("CNY");
			CurrencyList.add("COP");
			CurrencyList.add("CRC");
			CurrencyList.add("CUP");
			CurrencyList.add("CVE");
			CurrencyList.add("CZK");
			CurrencyList.add("DJF");
			CurrencyList.add("DKK");
			CurrencyList.add("DOP");
			CurrencyList.add("DZD");
			CurrencyList.add("EGP");
			CurrencyList.add("ETB");
			CurrencyList.add("EUR");
			CurrencyList.add("FJD");
			CurrencyList.add("FKP");
			CurrencyList.add("GBP");
			CurrencyList.add("GIP");
			CurrencyList.add("GMD");
			CurrencyList.add("GNF");
			CurrencyList.add("GTQ");
			CurrencyList.add("GYD");
			CurrencyList.add("HKD");
			CurrencyList.add("HNL");
			CurrencyList.add("HRK");
			CurrencyList.add("HTG");
			CurrencyList.add("HUF");
			CurrencyList.add("IDR");
			CurrencyList.add("ILS");
			CurrencyList.add("INR");
			CurrencyList.add("IQD");
			CurrencyList.add("IRR");
			CurrencyList.add("ISK");
			CurrencyList.add("JMD");
			CurrencyList.add("JOD");
			CurrencyList.add("JPY");
			CurrencyList.add("KES");
			CurrencyList.add("KHR");
			CurrencyList.add("KMF");
			CurrencyList.add("KPW");
			CurrencyList.add("KRW");
			CurrencyList.add("KWD");
			CurrencyList.add("KZT");
			CurrencyList.add("LAK");
			CurrencyList.add("LBP");
			CurrencyList.add("LKR");
			CurrencyList.add("LRD");
			CurrencyList.add("LSL");
			CurrencyList.add("LTL");
			CurrencyList.add("LVL");
			CurrencyList.add("LYD");
			CurrencyList.add("MAD");
			CurrencyList.add("MDL");
			CurrencyList.add("MKD");
			CurrencyList.add("MMK");
			CurrencyList.add("MNT");
			CurrencyList.add("MOP");
			CurrencyList.add("MRO");
			CurrencyList.add("MUR");
			CurrencyList.add("MVR");
			CurrencyList.add("MWK");
			CurrencyList.add("MXN");
			CurrencyList.add("MYR");
			CurrencyList.add("NAD");
			CurrencyList.add("NGN");
			CurrencyList.add("NIO");
			CurrencyList.add("NOK");
			CurrencyList.add("NPR");
			CurrencyList.add("NZD");
			CurrencyList.add("OMR");
			CurrencyList.add("PAB");
			CurrencyList.add("PEN");
			CurrencyList.add("PGK");
			CurrencyList.add("PHP");
			CurrencyList.add("PKR");
			CurrencyList.add("PLN");
			CurrencyList.add("PYG");
			CurrencyList.add("QAR");
			CurrencyList.add("RON");
			CurrencyList.add("RUB");
			CurrencyList.add("RWF");
			CurrencyList.add("SAR");
			CurrencyList.add("SBD");
			CurrencyList.add("SCR");
			CurrencyList.add("SEK");
			CurrencyList.add("SGD");
			CurrencyList.add("SHP");
			CurrencyList.add("SLL");
			CurrencyList.add("SOS");
			CurrencyList.add("STD");
			CurrencyList.add("SVC");
			CurrencyList.add("SYP");
			CurrencyList.add("SZL");
			CurrencyList.add("THB");
			CurrencyList.add("TND");
			CurrencyList.add("TOP");
			CurrencyList.add("TRY");
			CurrencyList.add("TTD");
			CurrencyList.add("TWD");
			CurrencyList.add("TZS");
			CurrencyList.add("UAH");
			CurrencyList.add("USD");
			CurrencyList.add("UYU");
			CurrencyList.add("VND");
			CurrencyList.add("VUV");
			CurrencyList.add("WST");
			CurrencyList.add("XAF");
			CurrencyList.add("XAG");
			CurrencyList.add("XAU");
			CurrencyList.add("XCD");
			CurrencyList.add("XCP");
			CurrencyList.add("XOF");
			CurrencyList.add("XPD");
			CurrencyList.add("XPF");
			CurrencyList.add("XPT");
			CurrencyList.add("YER");
			CurrencyList.add("ZAR");
		}
	}



	public static double GetRate(String orgCurrency, String tagCurrency) throws Exception{
		Double rate = 0.0; 
		if(!CurrencyList.contains(orgCurrency)) throw new Exception("Orginal Currency is not exist");
		if(!CurrencyList.contains(tagCurrency)) throw new Exception("Target Currency is not exist");
		if(orgCurrency.equalsIgnoreCase(tagCurrency)) return 1.0;
		String urlstr = "http://qq.ip138.com/hl.asp?from="+orgCurrency+"&to="+tagCurrency+"&q=1";
		URL url;
		try {
			  url = new URL(urlstr);
		      Document doc = Jsoup.parse(url, 300);
		      Elements elems = doc.getElementsByAttributeValue("class", "rate");
			  if(elems!=null && elems.size()>0){
				   for(int i=0; i< elems.size(); i++){
					   Element elem = elems.get(i);
					   Element elemrate  = elem.getElementsByTag("td").get(4);
					   if(elemrate!=null && !"".equalsIgnoreCase(elemrate.text()))
						  rate = Double.parseDouble(elemrate.text());
				   }
			  }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rate;
	}




	public static double Calcuate(String orgCurrency, String tagCurrency, double amount) throws Exception{
		Double rate = 0.0; 
		if(!CurrencyList.contains(orgCurrency)) throw new Exception("Orginal Currency is not exist");
		if(!CurrencyList.contains(tagCurrency)) throw new Exception("Target Currency is not exist");
		String urlstr = "http://qq.ip138.com/hl.asp?from="+orgCurrency+"&to="+tagCurrency+"&q="+amount;
		 URL url;
		try {
			url = new URL(urlstr);

      Document doc = Jsoup.parse(url, 300);
      Elements elems = doc.getElementsByAttributeValue("class", "rate");
      if(elems!=null && elems.size()>0){
   	   for(int i=0; i< elems.size(); i++){
   		   Element elem = elems.get(i);
   		   Element elemrate  = elem.getElementsByTag("td").get(5);
   		   if(elemrate!=null && !"".equalsIgnoreCase(elemrate.text()))
   		   rate = Double.parseDouble(elemrate.text());
   	   }
      }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rate;
	}
	
	
	public static void main(String[] args){
		try {
			System.out.println("Rate USD to CNY is  : "+ ExchangeUtil.GetRate("HKD", "CNY"));
			System.out.println("Exchange 200 USD to CNY is  : "+ ExchangeUtil.Calcuate("HKD", "CNY", 200));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

}
