package dao;

import java.util.ArrayList;

import dto.Animal;

public class AnimalRepository {
	private ArrayList<Animal> listOfProducts = new ArrayList<Animal>();
	private static AnimalRepository instance = new AnimalRepository();

	public static AnimalRepository getInstance(){
		return instance;
	} 

	public AnimalRepository() {
		Animal p1 = new Animal();
		p1.setId("cow");
		p1.setLocal("외양간");
		p1.setYear("9살");
		p1.setFilename("P33.png");
		
		Animal p2 = new Animal();
		p2.setId("sheep");
		p2.setLocal("호주");
		p2.setYear("4살");
		p2.setFilename("P34.png");
		
		
		Animal p3 = new Animal();
		p3.setId("dog");
		p3.setLocal("한국");
		p3.setYear("3살");
		p3.setFilename("P35.png");
		
		/*
		 * phone.
		 * setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera"
		 * ); phone.setCategory("Smart Phone"); phone.setManufacturer("Apple");
		 * phone.setUnitsInStock(1000); phone.setCondition("New");
		 * phone.setFilename("P1234.png");
		 * 
		 * Product notebook = new Product("P1235", "LG PC 그램", 1500000); notebook.
		 * setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors"
		 * ); notebook.setCategory("Notebook"); notebook.setManufacturer("LG");
		 * notebook.setUnitsInStock(1000); notebook.setCondition("Refurbished");
		 * notebook.setFilename("P1235.png");
		 * 
		 * Product tablet = new Product("P1236", "Galaxy Tab S", 900000); tablet.
		 * setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor"
		 * ); tablet.setCategory("Tablet"); tablet.setManufacturer("Samsung");
		 * tablet.setUnitsInStock(1000); tablet.setCondition("Old");
		 * tablet.setFilename("P1236.png");
		 * 
		 * listOfProducts.add(phone); listOfProducts.add(notebook);
		 * listOfProducts.add(tablet);
		 */
		listOfProducts.add(p1);
		listOfProducts.add(p2);
		listOfProducts.add(p3);
	}

	public ArrayList<Animal> getAllProducts() {
		return listOfProducts;
	}
	
	public Animal getProductById(String pId) {
		Animal pById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Animal p = listOfProducts.get(i);
			if (p != null && p.getId() != null && p.getId().equals(pId)) {
				pById = p;
				break;
			}
		}
		return pById;
	}
	
	public void addPerson(Animal p) {
		listOfProducts.add(p);
	}
}
