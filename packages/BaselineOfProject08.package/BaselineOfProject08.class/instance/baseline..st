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
				group: 'default' with: #('EPIC' 'EPIC-Core' 'EPIC-GUI' 'EPIC-Simulation' 'EPIC-Serialization');
				group: 'Tests' with: #('EPIC-Test');
				group: 'TravisCI' with: #('Tests')]