<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Generated by NCL Eclipse -->
<ncl id="informacaoClima" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase>
			<region id="rgTV">
				<region id="rgBotaoInt" right="5%" top="5%" width="120" height="150" zIndex="4" />	
				<region id="rgTermometro" right="2%" top="10%" width="200" height="230" zIndex="4" />
			</region>
			
		</regionBase>
		
		<descriptorBase>
			<descriptor id="dVideo" region="rgTV" />
			<descriptor id="dBotao" region="rgBotaoInt" />
			<descriptor id="dTermometro" region="rgTermometro" >
				<descriptorParam name="fontSize" value="30"/>
				<descriptorParam name="fontColor" value="yellow"/>
			</descriptor>
				
		</descriptorBase>
		
		<connectorBase>
			<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin" />
				<simpleAction role="start" />
			</causalConnector>
			<causalConnector id="onEndStop">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" />
			</causalConnector>
		</connectorBase>
	</head>

	<body>

		<port id="pInicio" component="video"/>
		<media id="video" src="media/480-cnn.mp4" descriptor="dVideo" >
			<area id="interatividade" begin="1s" end="10s"/>
			<area id="clima1" begin="10s" end="15s" />
			<area id="clima2" begin="15s" end="20s"/>
			<area id="clima3" begin="20s" end="25s" />
			<area id="interatividadeRepeat" begin="25s" />
		</media>
			
		<media id="imgInteratividade" src="media/interactive.png" descriptor="dBotao" />
		<media id="textoTempo1" src="media/cidadeGRU.txt" descriptor="dTermometro" />
		<media id="textoTempo2" src="media/cidadePOA.txt" descriptor="dTermometro" />
		<media id="textoTempo3" src="media/cidadeJPA.txt" descriptor="dTermometro" />
		
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="video" interface="interatividade" />
			<bind role="start" component="imgInteratividade" />
		</link>
		
		<link xconnector="onEndStop">
			<bind role="onEnd" component="video" interface="interatividade" />
			<bind role="stop" component="imgInteratividade" />	
		</link>
		
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="video" interface="clima1" />
			<bind role="start" component="textoTempo1" />
		</link>
		
		<link xconnector="onEndStop">
			<bind role="onEnd" component="video" interface="clima1" />
			<bind role="stop" component="textoTempo1" />	
		</link>
		
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="video" interface="clima2" />
			<bind role="start" component="textoTempo2" />
		</link>
		
		<link xconnector="onEndStop">
			<bind role="onEnd" component="video" interface="clima2" />
			<bind role="stop" component="textoTempo2" />	
		</link>
		
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="video" interface="clima3" />
			<bind role="start" component="textoTempo3" />
		</link>
		
		<link xconnector="onEndStop">
			<bind role="onEnd" component="video" interface="clima3" />
			<bind role="stop" component="textoTempo3" />	
		</link>
		
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="video" interface="interatividadeRepeat" />
			<bind role="start" component="imgInteratividade" />
		</link>
		
		<link xconnector="onEndStop">
			<bind role="onEnd" component="video" />
			<bind role="stop" component="imgInteratividade" />
			
		</link>

	</body>
</ncl>