package cn.edu.zhku.shms.bean;

public class Major {
    private Integer id;

    private String name;

    private Integer departmentBranchId;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getDepartmentBranchId() {
        return departmentBranchId;
    }

    public void setDepartmentBranchId(Integer departmentBranchId) {
        this.departmentBranchId = departmentBranchId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}