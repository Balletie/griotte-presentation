| presentation templateFile texFile configuration |

presentation := (FileSystem /#Users/#skip/#Programming/#Pharo/#Griotte/#presentation/'goals_presentation.pier').
templateFile := (FileSystem /#Users/#skip/#Programming/#Pharo/#Griotte/#presentation/'presentation_template.tex').
texFile := (FileSystem /#Users/#skip/#Programming/#Pharo/#Griotte/#presentation/'main.tex').
configuration := PRCocoonConfiguration new.
configuration inputFiles: { presentation } asOrderedCollection .
configuration outputFile: texFile absolutePath.
configuration outputType: PRBeamerWriter.
configuration templateStream: templateFile readStream.
configuration export.
