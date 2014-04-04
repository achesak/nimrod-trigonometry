# Nimrod trigonometry module.

# Written by Adam Chesak.
# Code released under the MIT open source license.

import math

proc arccosh*(x : float): float =
  ## Returns the inverse hyberbolic cosine of x.
  result = ln(x + sqrt(x * x - 1))

proc arccot*(x : float): float =
  ## Returns the inverse cotangent of x.
  result = PI / 2 - arctan(x)

proc arccoth*(x : float): float =
  ## Returns the inverse hyperbolic cotangent of x.
  result = (ln(1 + (1 / x)) - ln(1 - (1 / x))) / 2

proc arccsc*(x : float): float = 
  ## Returns the inverse cosecant of x.
  result = arcsin(1 / x)

proc arccsch*(x : float): float =
  ## Returns the inverse hyperbolic cosecant of x.
  if x < 0:
    result = ln((1 - sqrt(1 + x * x)) / x)
  else:
    result = ln((1 + sqrt(1 + x * x)) / x)

proc arcsec*(x : float): float =
  ## Returns the inverse secant of x.
  result = PI / 2 - arcsin(1 / x)

proc arcsech*(x : float): float =
  ## Returns the inverse hyperbolic secant of x.
  result = ln((sqrt((1 / x) - 1) * sqrt((1 / x) + 1)) + (1 / x))

proc arcsinh*(x : float): float =
  ## Returns the inverse hyperbolic sine of x.
  result = ln(x + sqrt(x * x + 1))

proc arctanh*(x : float): float =
  ## Returns the inverse hyperbolic tangent of x.
  result = (ln(1 + x) - ln(1 - x)) / 2

proc csc*(x : float): float =
  ## Returns the cosecant of x.
  result = 1 / sin(x)

proc csch*(x : float): float =
  ## Returns the hyperbolic cosecant of x.
  result = 2 / (exp(x) - exp(-x))

proc cot*(x : float): float =
  ## Returns the cotangent of x.
  result = 1 / tan(x)
 
proc coth*(x : float): float =
  ## Returns the hyperbolic cotangent of x.
  result = (exp(x) + exp(-x)) / (exp(x) - exp(-x))

proc sec*(x : float): float =
  ## Returns the secant of x.
  result = 1 / cos(x)

proc sech*(x : float): float =
  ## Returns the hyperbolic secant of x.
  result = 2 / (exp(x) + exp(-x))
