package pl.gwozdzDariusz.ContractsManagementSystem.models;

import javax.persistence.*;

@Entity
@Table(name = "systems")
public class OS {

	@Id
	@GeneratedValue(generator = "systems_seq")
	@SequenceGenerator(name = "systems_seq", sequenceName = "systems_seq", allocationSize = 1)
	@Column(name = "SST_ID", nullable = false)
	private Integer id;

	@Column(name = "SST_NAME", nullable = false)
	private String systemName;

	@Column(name = "SST_DESCRIPTION", nullable = false)
	private String systemDescription;

	@Column(name = "SST_LEAD_TECHNOLOGIES", nullable = false)
	private String systemLeadTechnologies;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSystemName() {
		return systemName;
	}

	public void setSystemName(String systemName) { this.systemName = systemName; }

	public String getSystemDescription() {
		return systemDescription;
	}

	public void setSystemDescription(String systemDescription) {
		this.systemDescription = systemDescription;
	}

	public String getSystemLeadTechnologies() {
		return systemLeadTechnologies;
	}

	public void setSystemLeadTechnologies(String systemLeadTechnologies) {
		this.systemLeadTechnologies = systemLeadTechnologies;
	}

}
