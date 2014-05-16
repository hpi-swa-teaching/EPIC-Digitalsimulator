baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Project08-Core';
				package: 'Project08-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('Project08-Core');
				group: 'Tests' with: #('Project-08-Test');
				group: 'TravisCI' with: #('Tests')]