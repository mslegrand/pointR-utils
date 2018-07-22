#svgR elements: font-face glyph missing-glyph hkern vkern font font-face-name font-face-format font-face-uri animate animateColor animateMotion animateTransform set mpath feFuncA feFuncB feFuncG feFuncR feDistantLight feTurbulence feConvolveMatrix feDiffuseLighting feOffset filter feBlend feColorMatrix feComponentTransfer feComposite feDisplacementMap feFlood feGaussianBlur feImage feMerge feMorphology feSpecularLighting feTile feSpotLight fePointLight svg a altGlyph circle clipPath cursor defs ellipse foreignObject g image line linearGradient marker mask path pattern polygon polyline radialGradient rect script switch symbol text textPath tref tspan use view altGlyphDef altGlyphItem color-profile desc feMergeNode font-face-src glyphRef metadata stop style title font.face missing.glyph font.face.name font.face.format font.face.uri color.profile font.face.src getNode script

#Illustrates draggable

WH<-c(600,620)

#points defined by mouse clicks, edit with care!
ptR<-list(
  x= matrix( c(c(100,350),c(130,234),c(286,216),c(298,285),c(250,450),c(250,350)), 2)
)


svgR(wh=WH, 
     
     polygon(points=ptR$x, fill="blue",opacity=.5),
     rect( class="draggable", opacity=.5,
           xy=c(0,30), wh=c(80,80), fill="blue", 
           transform=matrix(c(-0.0780683788993585, -0.704830105608349, 1.02335193518265, 0.593439054301281, 233.428095513645, 86.651443407387),2)
     ),
     circle( class="draggable", 
             cxy=c(100,230), r=50, fill="red", opacity=.5,
             transform=matrix(c(0.457039976119995, -1.38744006633759, 1.09200000762939, 0.580544022321701, 150.116003417969, 208.266885986328),2)
     )
)
