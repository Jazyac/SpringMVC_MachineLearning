package com.crunchify.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jazyac.healthApp.key.ApiKeyFileReader;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
import org.json.*;

 
@Controller

public class CrunchifyHelloWorld {
 

	
	@RequestMapping("/ML")
	public ModelAndView ML() {
 

		
		


		return new ModelAndView("ML", "null", null );
	}
	
	
	@RequestMapping("/submit")
	public ModelAndView submit(@RequestParam("Food") String food) {
 
//		 These code snippets use an open-source library. http://unirest.io/java
		try {

			String foodPlus = food.replaceAll(" ", "+");
			
//			HttpResponse<String> response = Unirest.get("https://edamam-edamam-nutrition-analysis.p.mashape.com/api/nutrition-data?ingr="+foodPlus)
//					.header("X-Mashape-Key", ApiKeyFileReader.getKey())
//					.header("Accept", "application/json")
//			.asString();
//			
//			
//			return new ModelAndView("submit", "results", response.getBody() );
//			
//			
//			HttpResponse<String> response = Unirest.get("https://edamam-edamam-nutrition-analysis.p.mashape.com/api/nutrition-data?ingr="+foodPlus)
//					.header("X-Mashape-Key", ApiKeyFileReader.getKey())
//					.header("Accept", "application/json")
//			.asString();
//			
//			String reponseStr=response.getBody();
//			
//			String fatStr=reponseStr.substring(reponseStr.indexOf("Total lipid (fat)") + 1, reponseStr.indexOf("}"));
//			return new ModelAndView("submit", "results", fatStr );
////			
//			
			
			
			
			 HttpResponse<JsonNode> response = Unirest.get("https://edamam-edamam-nutrition-analysis.p.mashape.com/api/nutrition-data?ingr="+foodPlus)
					.header("X-Mashape-Key", ApiKeyFileReader.getKey())
					.header("Accept", "application/json")
			.asJson();
			
		JSONObject jsonObject=	response.getBody().getObject();
	 JSONArray ingredients= (JSONArray) jsonObject.get("ingredients");
	//	String ing =   ingredients.getString(0);
	

	 
	 JSONObject parsedObject =  (JSONObject) ingredients.get(0);
	 String parsedString =(String) parsedObject.get("parsed").toString();
	 //System.out.println(ingredients.toString(1));
	// String ing =  ingredients.toString();

		//String results= jsonObject.getJSONObject("ENERC_KCAL");
			return new ModelAndView("submit", "results", parsedString );
			
			
			
		} catch (UnirestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
return new ModelAndView("submit", "results", "Error!- '"+food+"' is not an acceptable input" );
			
	}
	
}