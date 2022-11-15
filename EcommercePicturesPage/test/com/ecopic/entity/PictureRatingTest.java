package com.ecopic.entity;

import static org.junit.Assert.*;

import java.util.HashSet;
import java.util.Set;

import org.junit.Test;

public class PictureRatingTest {

	@Test
	public void testAverageRating() {
		Picture picture = new Picture();
		
		Set<Review> reviews = new HashSet<Review>();
		Review review1 = new Review();
		review1.setRating(5);
		reviews.add(review1);
		
		picture.setReviews(reviews);
		
		float averageRating = picture.getAverageRating();
		
		assertEquals(5.0, averageRating , 0.0);
	}
	
	@Test
	public void testAverageRating2() {
		Picture picture = new Picture();
		
		Set<Review> reviews = new HashSet<Review>();
		Review review1 = new Review();
		review1.setRating(5);
		reviews.add(review1);
		
		Review review2 = new Review();
		review2.setRating(4);
		reviews.add(review2);
		
		Review review3 = new Review();
		review3.setRating(3);
		reviews.add(review3);
		
		picture.setReviews(reviews);
		
		float averageRating = picture.getAverageRating();
		
		assertEquals(4.0, averageRating , 0.0);
	}

	@Test
	public void testRatingString1() {
		float averageRating = 0.0f;
		Picture picture = new Picture();
		String actual = picture.getRatingString(averageRating);
		
		String expected ="off,off,off,off,off";
		
		assertEquals(expected, actual);
	}
	
	@Test
	public void testRatingString2() {
		float averageRating = 5.0f;
		Picture picture = new Picture();
		String actual = picture.getRatingString(averageRating);
		
		String expected ="on,on,on,on,on";
		
		assertEquals(expected, actual);
	}
	
	@Test
	public void testRatingString3() {
		float averageRating = 3.0f;
		Picture picture = new Picture();
		String actual = picture.getRatingString(averageRating);
		
		String expected ="on,on,on,off,off";
		
		assertEquals(expected, actual);
	}
	
	@Test
	public void testRatingString4() {
		float averageRating = 4.5f;
		Picture picture = new Picture();
		String actual = picture.getRatingString(averageRating);
		
		String expected ="on,on,on,on,half";
		
		assertEquals(expected, actual);
	}
	
	@Test
	public void testRatingString5() {
		float averageRating = 3.6f;
		Picture picture = new Picture();
		String actual = picture.getRatingString(averageRating);
		
		String expected ="on,on,on,half,off";
		
		assertEquals(expected, actual);
	}
}