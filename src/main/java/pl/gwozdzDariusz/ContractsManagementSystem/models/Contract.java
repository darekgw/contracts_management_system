package pl.gwozdzDariusz.ContractsManagementSystem.models;

import javax.persistence.*;

@Entity
@Table(name = "CONTRACTS")
public class Contract {

	@Id
	@GeneratedValue(generator = "contracts_seq")
	@SequenceGenerator(name = "contracts_seq", sequenceName = "contracts_seq", allocationSize = 1)
	@Column(name = "CNT_ID")
	private Integer id;

	@Column(name = "CNT_NUMBER", nullable = false)
	private String contractNumber;

	@Column(name = "CNT_DATE_FROM", nullable = false)
	private String contractDateFrom;

	@Column(name = "CNT_DATE_TO", nullable = false)
	private String contractDateTo;

	@Column(name = "CNT_AMOUNT", nullable = false)
	private String contractAmount;

	@Column(name = "CNT_BILLING_CYCLE", nullable = false)
	private String contractBillingCycle;

	@Column(name = "CNT_IS_ACTIVE", nullable = false)
	private String contractIsActive;

	@ManyToOne
	@JoinColumn(name = "SST_ID", nullable = false)
	private OS OS;

	public String getContractDateFrom() {
		return contractDateFrom;
	}

	public void setContractDateFrom(String contractDateFrom) {
		this.contractDateFrom = contractDateFrom;
	}

	public String getContractDateTo() {
		return contractDateTo;
	}

	public void setContractDateTo(String contractDateTo) {
		this.contractDateTo = contractDateTo;
	}

	public String getContractAmount() {
		return contractAmount;
	}

	public void setContractAmount(String contractAmount) {
		this.contractAmount = contractAmount;
	}

	public String getContractBillingCycle() {
		return contractBillingCycle;
	}

	public void setContractBillingCycle(String contractBillingCycle) {
		this.contractBillingCycle = contractBillingCycle;
	}

	public String getContractIsActive() {
		return contractIsActive;
	}

	public void setContractIsActive(String contractIsActive) {
		this.contractIsActive = contractIsActive;
	}

	public OS getOS() {
		return OS;
	}

	public void setOS(OS OS) {
		this.OS = OS;
	}

	public String getContractNumber() {
		return contractNumber;
	}

	public void setContractNumber(String contractNumber) {
		this.contractNumber = contractNumber;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
}
