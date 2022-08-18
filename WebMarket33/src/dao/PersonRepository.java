package dao;

import java.util.ArrayList;

import dto.Person;


public class PersonRepository {
	
	private ArrayList<Person> listOfProducts = new ArrayList<Person>();
	private static PersonRepository instance = new PersonRepository();

	public static PersonRepository getInstance(){
		return instance;
	} 

	public PersonRepository() {
		Person p1 = new Person();
		p1.setId("MKR1");
		p1.setName("문경률1");
		p1.setEmail("asdf@naver.com");
		
		Person p2 = new Person();
		p2.setId("MKR1");
		p2.setName("문경률1");
		p2.setEmail("asdf@naver.com");
		
		Person p3 = new Person();
		p3.setId("MKR1");
		p3.setName("문경률1");
		p3.setEmail("asdf@naver.com");
		
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

	public ArrayList<Person> getAllProducts() {
		return listOfProducts;
	}
	
	public Person getProductById(String pId) {
		Person pById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Person p = listOfProducts.get(i);
			if (p != null && p.getId() != null && p.getId().equals(pId)) {
				pById = p;
				break;
			}
		}
		return pById;
	}
	
	public void addPerson(Person p) {
		listOfProducts.add(p);
	}
}
