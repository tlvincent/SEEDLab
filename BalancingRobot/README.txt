These are files for a project base laboratory course, which was run in the EECS department of the Colorado School of Mines in academic year 15/16. At CSM, the laboratory course is called the Systems Exploration, Engineering and Design (SEED) laboratory. 

An overview description of the SEED lab is given in the SEED Lab poster.pdf

The laboratory handouts and syllabus are in the LectureNotes folder. Some of these lecture notes are in latex. These files have been organized so that it is easy to change the instructors, dates, institutions, etc. To re-compile these files, you should open the file commonheader.tex and change /mainfolder to point to the top level folder (i.e. the folder that commonheader.tex is in)

To customize the notes to your class, edit the Headers/coursedefheader.tex file

The latex files use the beamer package (https://www.sharelatex.com/learn/Beamer), and have a workflow that allows both article-style handouts and presentations to be created from the same source material. An example of this is The main content is always in the file Content.tex. There will be one or more main files that input Context.tex. For example, the in the Syllabus folder, there is Syllabus.handout.tex and Syllabus.presentation.tex. The first file creates a article-type document while the second creates a presentation. 

Some of the graphics uses the tikz package (https://www.sharelatex.com/learn/TikZ_package). Tikz is to drawing programs what latex is to Word - hard to learn, but much easier to maintain and extend. 