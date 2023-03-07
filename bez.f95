program bez
implicit none
integer::i,j,k,l
real,dimension(1,4)::a
real,dimension(4,4)::b
real,dimension(4,3)::c
real,dimension(1,4)::d
real,dimension(1,3)::e
real::t
real::x0,y0,z0,x1,y1,z1,x2,y2,z2,x3,y3,z3
print*,'x0'
read*,x0
print*,'y0'
read*,y0
print*,'z0'
read*,z0


print*,'x1'
read*,x1
print*,'y1'
read*,y1
print*,'z1'
read*,z1

print*,'x2'
read*,x2
print*,'y2'
read*,y2
print*,'z2'
read*,z2

print*,'x3'
read*,x3
print*,'y3'
read*,y3
print*,'z3'
read*,z3


t=0
j=10000
do i=1,j
b(1,1)=-1
b(1,2)=3
b(1,3)=-3
b(1,4)=1
b(2,1)=3
b(2,2)=-6
b(2,3)=3
b(2,4)=0
b(3,1)=-3
b(3,2)=3
b(3,3)=0
b(3,4)=0
b(4,1)=1
b(4,2)=0
b(4,3)=0
b(4,4)=0
c(1,1)=x0
c(1,2)=y0
c(1,3)=z0
c(2,1)=x1
c(2,2)=y1
c(2,3)=z1
c(3,1)=x2
c(3,2)=y2
c(3,3)=z2
c(4,1)=x3
c(4,2)=y3
c(4,3)=z3
a(1,1)=t**3
a(1,2)=t*t
a(1,3)=t
a(1,4)=1
d=matmul(a,b)
e=matmul(d,c)
print*,e

t=t+.0001
end do

end program bez

