project (word-texfiles)
cmake_minimum_required (VERSION 2.8)

set(TEXFILES_PREFIX word)

find_package(LATEX REQUIRED)

set(TEXFILES ${TEXFILES_PREFIX}.cls)
set(TEXFILES_SRC ${TEXFILES_PREFIX}.dtx)
set(TEXFILES_DOC ${TEXFILES_PREFIX}.pdf)
set(TEXFILES_INS ${TEXFILES_PREFIX}.ins)

add_custom_command(
  OUTPUT ${TEXFILES}
  COMMAND ${LUALATEX_COMPILER}
  ARGS ${TEXFILES_INS}
  DEPENDS
    ${TEXFILES_SRC}
    ${TEXFILES_INS}
)
  
add_custom_command(
  OUTPUT ${TEXFILES_DOC}
  COMMAND ${LUALATEX_COMPILER}
  ARGS ${TEXFILES_SRC}
  DEPENDS
    ${TEXFILES_SRC}
)

add_custom_target(main ALL echo
  DEPENDS
    ${TEXFILES}
    ${TEXFILES_DOC}
)

add_custom_target(main-clean CLEAN echo
  COMMAND rm
  ARGS -r *.aux *.cls *.log *.toc *.dvi *.pdf *.out *.fls
)
