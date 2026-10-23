x = input('Enter a Character:')
y = int(input('Enter a Number:'))
z = float(input('Enter a Number:'))

print('Your Character:', x, type(x))
print('Your first Number:', y, type(y))
print('Your second Number:', z, type(z))

print('Sum of two number:', y + z)
print('Sub of two number:', y - z)
print('Multi of two number:', y * z)
print('Division of two number:', y / z)
print('Division of two number:', y // z)
print('Modulus of two number:', y % z)
print(f'Power of {y} is:', y ** z)
print(f'Square root of {y} is:', y ** 0.5)

length = int(input('Enter length:'))
breadth = int(input('Enter breadth:'))

print('Parameter of a Rectangle:', 2 * (length + breadth))
print('Area of a Rectangle:', length * breadth)

radius = int(input('Enter radius:'))

print('Diameter of a Circle:', 2 * radius)
print('Circumference of a Circle:', (2 * 3.1416 * radius))
print('Area of a Circle:', (3.1416 * radius ** 2))

print('cm to m:', length / 100)
print('cm to km:', length / 100000)

temp_C = float(input('Enter temp in Celsius:'))
temp_F = float(input('Enter temp in Fahrenheit:'))

print('C to F:', ((temp_C * 9) / 5) + 32)
print('F to C:', ((temp_F - 32) * 5) / 9)

days = int(input('Enter days:'))

years = int(days / 365)

print('days to years:', years)
print('days to weeks:', int(days / 7))

angle1 = int(input('Enter triangle angle 1:'))
angle2 = int(input('Enter triangle angle 2:'))

print('Third angle:', 180 - (angle1 + angle2))

base = int(input('Enter triangle base:'))
height = int(input('Enter triangle height:'))

print('Area of triangle:', (base * height) * 0.5)

side = int(input('Enter equilateral triangle side:'))

print('Area of equilateral triangle:', ((3 ** 0.5) / 2) * (side ** 2))

sub1 = int(input('Enter subject 1 mark:'))
sub2 = int(input('Enter subject 2 mark:'))
sub3 = int(input('Enter subject 3 mark:'))
sub4 = int(input('Enter subject 4 mark:'))
sub5 = int(input('Enter subject 5 mark:'))

print('Total marks:', (sub1 + sub2 + sub3 + sub4 + sub5))
print('Average marks:', (sub1 + sub2 + sub3 + sub4 + sub5) / 5)
print(f'Percentage marks: {((sub1 + sub2 + sub3 + sub4 + sub5) / 500) * 100}%')

p = int(input('Enter principle:'))
t = int(input('Enter time:'))
r = int(input('Enter rate:'))

print('Simple Interest:', (p * t * r) / 100)
print('Compound Interest:', p * ((1 + (r / 100)) ** t))