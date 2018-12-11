def is_leap_year(year):
  
  return year % 4 == 0

def test_is_leap_year():
  assert is_leap_year(1996)

def test_is_normal_year():
  assert not is_leap_year(1997)

def test_is_atypical_common_year():
  assert not is_leap_year(1900)
