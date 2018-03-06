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
			HttpResponse<JsonNode> response = Unirest.get("https://edamam-edamam-nutrition-analysis.p.mashape.com/api/nutrition-data?ingr="+foodPlus)
					.header("X-Mashape-Key", ApiKeyFileReader.getKey())
					.header("Accept", "application/json")
			.asJson();
			

	 JSONObject jsonObject=	response.getBody().getObject(); //gets the whole body
	 JSONArray ingredientsArray= (JSONArray) jsonObject.get("ingredients");
	 JSONObject ingredientsObject =  (JSONObject) ingredientsArray.get(0);
	 JSONArray parsedArray= (JSONArray) ingredientsObject.get("parsed");
	 JSONObject nutrientsObject =  (JSONObject) parsedArray.get(0);
	 JSONObject nutrientsObjectTwo=(JSONObject) nutrientsObject.get("nutrients");
	 JSONObject fatObject=(JSONObject) nutrientsObjectTwo.get("FAT");
	 Double quantity=(Double) fatObject.get("quantity");
	 String units=(String) fatObject.get("unit");
	 
			return new ModelAndView("submit", "results", food+" has/have "+quantity+ units+" of fats.");
			
			
			
		} catch (UnirestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
return new ModelAndView("submit", "results", "Error!- '"+food+"' is not an acceptable input" );
			
	}
	
}