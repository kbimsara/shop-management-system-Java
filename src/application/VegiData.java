
package application;

public class VegiData {
    private final String id;
    private final String name;
    private final int price;
    private final int qt;
    private final String Status;

    public VegiData(String id, String name, int price, int qt, String Status) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.qt = qt;
        this.Status = Status;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }

    public int getQt() {
        return qt;
    }

    public String getStatus() {
        return Status;
    }
    
    
}
