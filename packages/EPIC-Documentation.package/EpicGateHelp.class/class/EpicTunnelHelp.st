pages
EpicTunnelHelp

	^ HelpTopic
		title: 'Tunnel'
		contents: (EpicHelp showHTML: 
'<h1>Tunnel</h1>
'), 
(EpicHelp showImage: 'gate_tunnel'),
(EpicHelp showHTML: '
<p>The tunnel is used to pass a signal from a tunnel opening to the tunnel end without any visible wires. It can be therefore used to manage wires in large circuit to improve its layout. To create a Tunnel Ending simply yellow-click (right-click) on a tunnel opening and select "Create TunnelEnd". It is possible to create multiple tunnel endings for a single tunnel entrance.</p>')