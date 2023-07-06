package recipes.entity;

public class Category {
	private Integer categoryId;
	
	
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public Integer getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(Integer categoryName) {
		this.categoryName = categoryName;
	}
	private Integer categoryName;


	@Override
	public String toString() {
		return "ID =" + categoryId + ", categoryName = " + categoryName;
	}

}
