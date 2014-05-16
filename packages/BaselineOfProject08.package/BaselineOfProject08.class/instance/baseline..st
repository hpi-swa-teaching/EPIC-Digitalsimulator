baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'EPIC-Core';
				package: 'EPIC-GUI';
				package: 'Project08-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('EPIC-Core', 'EPIC-GUI');
				group: 'Tests' with: #('Project08-Tests');
				group: 'TravisCI' with: #('Tests')]