BEGIN {
D["PACKAGE_NAME"]=" \"tesseract\""
D["PACKAGE_TARNAME"]=" \"tesseract\""
D["PACKAGE_VERSION"]=" \"5.0.0-alpha-630-gce019\""
D["PACKAGE_STRING"]=" \"tesseract 5.0.0-alpha-630-gce019\""
D["PACKAGE_BUGREPORT"]=" \"https://github.com/tesseract-ocr/tesseract/issues\""
D["PACKAGE_URL"]=" \"https://github.com/tesseract-ocr/tesseract/\""
D["PACKAGE"]=" \"tesseract\""
D["VERSION"]=" \"5.0.0-alpha-630-gce019\""
D["PACKAGE_NAME"]=" \"tesseract\""
D["PACKAGE_VERSION"]=" \"5.0.0-alpha-630-gce019\""
D["PACKAGE_YEAR"]=" \"2018\""
D["PACKAGE_DATE"]=" \"10/29\""
D["HAVE_AVX"]=" 1"
D["HAVE_AVX2"]=" 1"
D["HAVE_FMA"]=" 1"
D["HAVE_SSE4_1"]=" 1"
D["STDC_HEADERS"]=" 1"
D["HAVE_SYS_TYPES_H"]=" 1"
D["HAVE_SYS_STAT_H"]=" 1"
D["HAVE_STDLIB_H"]=" 1"
D["HAVE_STRING_H"]=" 1"
D["HAVE_MEMORY_H"]=" 1"
D["HAVE_STRINGS_H"]=" 1"
D["HAVE_INTTYPES_H"]=" 1"
D["HAVE_STDINT_H"]=" 1"
D["HAVE_UNISTD_H"]=" 1"
D["HAVE_TIFFIO_H"]=" 1"
D["HAVE_FRAMEWORK_OPENCL"]=" 1"
D["HAVE_DLFCN_H"]=" 1"
D["LT_OBJDIR"]=" \".libs/\""
D["STDC_HEADERS"]=" 1"
D["TIME_WITH_SYS_TIME"]=" 1"
D["HAVE_SYS_WAIT_H"]=" 1"
D["HAVE_SYS_IPC_H"]=" 1"
D["HAVE_SYS_SHM_H"]=" 1"
D["HAVE_LIMITS_H"]=" 1"
D["HAVE_WCHAR_T"]=" 1"
D["HAVE_LONG_LONG_INT"]=" 1"
D["HAVE_OFF_T"]=" 1"
D["HAVE_MBSTATE_T"]=" 1"
D["HAVE_LIBCURL"]=" 1"
  for (key in D) D_is_set[key] = 1
  FS = ""
}
/^[\t ]*#[\t ]*(define|undef)[\t ]+[_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ][_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]*([\t (]|$)/ {
  line = $ 0
  split(line, arg, " ")
  if (arg[1] == "#") {
    defundef = arg[2]
    mac1 = arg[3]
  } else {
    defundef = substr(arg[1], 2)
    mac1 = arg[2]
  }
  split(mac1, mac2, "(") #)
  macro = mac2[1]
  prefix = substr(line, 1, index(line, defundef) - 1)
  if (D_is_set[macro]) {
    # Preserve the white space surrounding the "#".
    print prefix "define", macro P[macro] D[macro]
    next
  } else {
    # Replace #undef with comments.  This is necessary, for example,
    # in the case of _POSIX_SOURCE, which is predefined and required
    # on some systems where configure will not decide to define it.
    if (defundef == "undef") {
      print "/*", prefix defundef, macro, "*/"
      next
    }
  }
}
{ print }
