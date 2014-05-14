deletion
deletePorts
	self ports copy do: [:port | port delete]