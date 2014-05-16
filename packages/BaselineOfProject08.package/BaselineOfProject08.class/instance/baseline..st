baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'EPIC-Core';
				package: 'EPIC-Test' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('EPIC-Core');
				group: 'Tests' with: #('EPIC-Test');
				group: 'TravisCI' with: #('Tests')]