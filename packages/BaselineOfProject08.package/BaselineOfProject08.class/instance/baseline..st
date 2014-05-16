baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'EPIC';
				package: 'EPIC-Core';
				package: 'EPIC-GUI';
				package: 'EPIC-Simulation';
				package: 'EPIC-Serialization';
				package: 'EPIC-Test' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('EPIC');
				group: 'default' with: #('EPIC-Core');
				group: 'default' with: #('EPIC-GUI');
				group: 'default' with: #('EPIC-Simulation');
				group: 'default' with: #('EPIC-Serialization');
				group: 'Tests' with: #('EPIC-Test');
				group: 'TravisCI' with: #('Tests')]