| presentation templateFile texFile configuration |

presentation := (FileSystem /#Users/#skip/#Programming/#Pharo/#Griotte/'griotte-presentation'/'goals_presentation.pier').
templateFile := (FileSystem /#Users/#skip/#Programming/#Pharo/#Griotte/'griotte-presentation'/'presentation_template.tex').
texFile := (FileSystem /#Users/#skip/#Programming/#Pharo/#Griotte/'griotte-presentation'/'main.tex').
configuration := PRPillarConfiguration new.
configuration inputFiles: { presentation } asOrderedCollection .
configuration outputFile: texFile absolutePath.
configuration outputType: PRBeamerWriter.
configuration templateStream: templateFile readStream.
configuration export.
