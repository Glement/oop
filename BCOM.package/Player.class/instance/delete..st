deleting
delete: index
	units at: index ifPresent: [ units removeAt: index ].