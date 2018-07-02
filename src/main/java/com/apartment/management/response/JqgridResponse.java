package com.apartment.management.response;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class JqgridResponse<T extends Serializable>
{
	/**
	 * Current page
	 */
	private String page;

	/**
	 * Total pages
	 */
	private String total;

	/**
	 * Total number of records
	 */
	private String records;

	/**
	 * Contains the actual data
	 */
	private List<T> rows;

	public JqgridResponse()
	{
	}

	public JqgridResponse(String page, String total, String records,
			List<T> rows)
	{
		this.page = page;
		this.total = total;
		this.records = records;
		this.rows = rows;
	}

	public String getPage()
	{
		return page;
	}

	public void setPage(String page)
	{
		this.page = page;
	}

	public String getTotal()
	{
		return total;
	}

	public void setTotal(String total)
	{
		this.total = total;
	}

	public String getRecords()
	{
		return records;
	}

	public void setRecords(String records)
	{
		this.records = records;
	}

	public List<T> getRows()
	{
		return rows;
	}

	public void setRows(List<T> rows)
	{
		this.rows = rows;
	}
}
