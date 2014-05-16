baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'EPIC-Core';
				package: 'Project08-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('EPIC-Core');
				group: 'Tests' with: #('Project08-Tests');
				group: 'TravisCI' with: #('Tests')]