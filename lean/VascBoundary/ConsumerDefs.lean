import PolynomialInterfaces
import VascBoundary.AllSemantic
namespace BoundaryConsumer001
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock001.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock001.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic001.q
  U := readMatrix BoundarySemantic001.q BoundarySemantic001.u
  R := BoundarySemantic001.R
  C := BoundarySemantic001.C
  J := BoundarySemantic001.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic001.A] using BoundarySemantic001.semantic_check
end BoundaryConsumer001

namespace BoundaryConsumer002
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock002.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock002.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic002.q
  U := readMatrix BoundarySemantic002.q BoundarySemantic002.u
  R := BoundarySemantic002.R
  C := BoundarySemantic002.C
  J := BoundarySemantic002.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic002.A] using BoundarySemantic002.semantic_check
end BoundaryConsumer002

namespace BoundaryConsumer003
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock003.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock003.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic003.q
  U := readMatrix BoundarySemantic003.q BoundarySemantic003.u
  R := BoundarySemantic003.R
  C := BoundarySemantic003.C
  J := BoundarySemantic003.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic003.A] using BoundarySemantic003.semantic_check
end BoundaryConsumer003

namespace BoundaryConsumer004
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock004.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock004.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic004.q
  U := readMatrix BoundarySemantic004.q BoundarySemantic004.u
  R := BoundarySemantic004.R
  C := BoundarySemantic004.C
  J := BoundarySemantic004.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic004.A] using BoundarySemantic004.semantic_check
end BoundaryConsumer004

namespace BoundaryConsumer005
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock005.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock005.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic005.q
  U := readMatrix BoundarySemantic005.q BoundarySemantic005.u
  R := BoundarySemantic005.R
  C := BoundarySemantic005.C
  J := BoundarySemantic005.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic005.A] using BoundarySemantic005.semantic_check
end BoundaryConsumer005

namespace BoundaryConsumer006
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock006.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock006.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic006.q
  U := readMatrix BoundarySemantic006.q BoundarySemantic006.u
  R := BoundarySemantic006.R
  C := BoundarySemantic006.C
  J := BoundarySemantic006.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic006.A] using BoundarySemantic006.semantic_check
end BoundaryConsumer006

namespace BoundaryConsumer007
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock007.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock007.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic007.q
  U := readMatrix BoundarySemantic007.q BoundarySemantic007.u
  R := BoundarySemantic007.R
  C := BoundarySemantic007.C
  J := BoundarySemantic007.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic007.A] using BoundarySemantic007.semantic_check
end BoundaryConsumer007

namespace BoundaryConsumer008
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock008.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock008.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic008.q
  U := readMatrix BoundarySemantic008.q BoundarySemantic008.u
  R := BoundarySemantic008.R
  C := BoundarySemantic008.C
  J := BoundarySemantic008.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic008.A] using BoundarySemantic008.semantic_check
end BoundaryConsumer008

namespace BoundaryConsumer009
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock009.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock009.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic009.q
  U := readMatrix BoundarySemantic009.q BoundarySemantic009.u
  R := BoundarySemantic009.R
  C := BoundarySemantic009.C
  J := BoundarySemantic009.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic009.A] using BoundarySemantic009.semantic_check
end BoundaryConsumer009

namespace BoundaryConsumer010
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock010.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock010.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic010.q
  U := readMatrix BoundarySemantic010.q BoundarySemantic010.u
  R := BoundarySemantic010.R
  C := BoundarySemantic010.C
  J := BoundarySemantic010.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic010.A] using BoundarySemantic010.semantic_check
end BoundaryConsumer010

namespace BoundaryConsumer011
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock011.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock011.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic011.q
  U := readMatrix BoundarySemantic011.q BoundarySemantic011.u
  R := BoundarySemantic011.R
  C := BoundarySemantic011.C
  J := BoundarySemantic011.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic011.A] using BoundarySemantic011.semantic_check
end BoundaryConsumer011

namespace BoundaryConsumer012
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock012.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock012.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic012.q
  U := readMatrix BoundarySemantic012.q BoundarySemantic012.u
  R := BoundarySemantic012.R
  C := BoundarySemantic012.C
  J := BoundarySemantic012.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic012.A] using BoundarySemantic012.semantic_check
end BoundaryConsumer012

namespace BoundaryConsumer013
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock013.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock013.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic013.q
  U := readMatrix BoundarySemantic013.q BoundarySemantic013.u
  R := BoundarySemantic013.R
  C := BoundarySemantic013.C
  J := BoundarySemantic013.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic013.A] using BoundarySemantic013.semantic_check
end BoundaryConsumer013

namespace BoundaryConsumer014
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock014.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock014.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic014.q
  U := readMatrix BoundarySemantic014.q BoundarySemantic014.u
  R := BoundarySemantic014.R
  C := BoundarySemantic014.C
  J := BoundarySemantic014.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic014.A] using BoundarySemantic014.semantic_check
end BoundaryConsumer014

namespace BoundaryConsumer015
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock015.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock015.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic015.q
  U := readMatrix BoundarySemantic015.q BoundarySemantic015.u
  R := BoundarySemantic015.R
  C := BoundarySemantic015.C
  J := BoundarySemantic015.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic015.A] using BoundarySemantic015.semantic_check
end BoundaryConsumer015

namespace BoundaryConsumer016
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock016.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock016.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic016.q
  U := readMatrix BoundarySemantic016.q BoundarySemantic016.u
  R := BoundarySemantic016.R
  C := BoundarySemantic016.C
  J := BoundarySemantic016.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic016.A] using BoundarySemantic016.semantic_check
end BoundaryConsumer016

namespace BoundaryConsumer017
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock017.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock017.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic017.q
  U := readMatrix BoundarySemantic017.q BoundarySemantic017.u
  R := BoundarySemantic017.R
  C := BoundarySemantic017.C
  J := BoundarySemantic017.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic017.A] using BoundarySemantic017.semantic_check
end BoundaryConsumer017

namespace BoundaryConsumer018
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock018.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock018.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic018.q
  U := readMatrix BoundarySemantic018.q BoundarySemantic018.u
  R := BoundarySemantic018.R
  C := BoundarySemantic018.C
  J := BoundarySemantic018.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic018.A] using BoundarySemantic018.semantic_check
end BoundaryConsumer018

namespace BoundaryConsumer019
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock019.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock019.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic019.q
  U := readMatrix BoundarySemantic019.q BoundarySemantic019.u
  R := BoundarySemantic019.R
  C := BoundarySemantic019.C
  J := BoundarySemantic019.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic019.A] using BoundarySemantic019.semantic_check
end BoundaryConsumer019

namespace BoundaryConsumer020
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock020.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock020.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic020.q
  U := readMatrix BoundarySemantic020.q BoundarySemantic020.u
  R := BoundarySemantic020.R
  C := BoundarySemantic020.C
  J := BoundarySemantic020.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic020.A] using BoundarySemantic020.semantic_check
end BoundaryConsumer020

namespace BoundaryConsumer021
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock021.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock021.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic021.q
  U := readMatrix BoundarySemantic021.q BoundarySemantic021.u
  R := BoundarySemantic021.R
  C := BoundarySemantic021.C
  J := BoundarySemantic021.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic021.A] using BoundarySemantic021.semantic_check
end BoundaryConsumer021

namespace BoundaryConsumer022
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock022.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock022.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic022.q
  U := readMatrix BoundarySemantic022.q BoundarySemantic022.u
  R := BoundarySemantic022.R
  C := BoundarySemantic022.C
  J := BoundarySemantic022.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic022.A] using BoundarySemantic022.semantic_check
end BoundaryConsumer022

namespace BoundaryConsumer023
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock023.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock023.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic023.q
  U := readMatrix BoundarySemantic023.q BoundarySemantic023.u
  R := BoundarySemantic023.R
  C := BoundarySemantic023.C
  J := BoundarySemantic023.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic023.A] using BoundarySemantic023.semantic_check
end BoundaryConsumer023

namespace BoundaryConsumer024
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock024.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock024.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic024.q
  U := readMatrix BoundarySemantic024.q BoundarySemantic024.u
  R := BoundarySemantic024.R
  C := BoundarySemantic024.C
  J := BoundarySemantic024.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic024.A] using BoundarySemantic024.semantic_check
end BoundaryConsumer024

namespace BoundaryConsumer025
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock025.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock025.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic025.q
  U := readMatrix BoundarySemantic025.q BoundarySemantic025.u
  R := BoundarySemantic025.R
  C := BoundarySemantic025.C
  J := BoundarySemantic025.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic025.A] using BoundarySemantic025.semantic_check
end BoundaryConsumer025

namespace BoundaryConsumer026
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock026.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock026.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic026.q
  U := readMatrix BoundarySemantic026.q BoundarySemantic026.u
  R := BoundarySemantic026.R
  C := BoundarySemantic026.C
  J := BoundarySemantic026.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic026.A] using BoundarySemantic026.semantic_check
end BoundaryConsumer026

namespace BoundaryConsumer027
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock027.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock027.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic027.q
  U := readMatrix BoundarySemantic027.q BoundarySemantic027.u
  R := BoundarySemantic027.R
  C := BoundarySemantic027.C
  J := BoundarySemantic027.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic027.A] using BoundarySemantic027.semantic_check
end BoundaryConsumer027

namespace BoundaryConsumer028
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock028.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock028.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic028.q
  U := readMatrix BoundarySemantic028.q BoundarySemantic028.u
  R := BoundarySemantic028.R
  C := BoundarySemantic028.C
  J := BoundarySemantic028.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic028.A] using BoundarySemantic028.semantic_check
end BoundaryConsumer028

namespace BoundaryConsumer029
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock029.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock029.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic029.q
  U := readMatrix BoundarySemantic029.q BoundarySemantic029.u
  R := BoundarySemantic029.R
  C := BoundarySemantic029.C
  J := BoundarySemantic029.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic029.A] using BoundarySemantic029.semantic_check
end BoundaryConsumer029

namespace BoundaryConsumer030
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock030.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock030.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic030.q
  U := readMatrix BoundarySemantic030.q BoundarySemantic030.u
  R := BoundarySemantic030.R
  C := BoundarySemantic030.C
  J := BoundarySemantic030.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic030.A] using BoundarySemantic030.semantic_check
end BoundaryConsumer030

namespace BoundaryConsumer031
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock031.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock031.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic031.q
  U := readMatrix BoundarySemantic031.q BoundarySemantic031.u
  R := BoundarySemantic031.R
  C := BoundarySemantic031.C
  J := BoundarySemantic031.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic031.A] using BoundarySemantic031.semantic_check
end BoundaryConsumer031

namespace BoundaryConsumer032
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock032.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock032.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic032.q
  U := readMatrix BoundarySemantic032.q BoundarySemantic032.u
  R := BoundarySemantic032.R
  C := BoundarySemantic032.C
  J := BoundarySemantic032.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic032.A] using BoundarySemantic032.semantic_check
end BoundaryConsumer032

namespace BoundaryConsumer033
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock033.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock033.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic033.q
  U := readMatrix BoundarySemantic033.q BoundarySemantic033.u
  R := BoundarySemantic033.R
  C := BoundarySemantic033.C
  J := BoundarySemantic033.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic033.A] using BoundarySemantic033.semantic_check
end BoundaryConsumer033

namespace BoundaryConsumer034
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock034.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock034.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic034.q
  U := readMatrix BoundarySemantic034.q BoundarySemantic034.u
  R := BoundarySemantic034.R
  C := BoundarySemantic034.C
  J := BoundarySemantic034.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic034.A] using BoundarySemantic034.semantic_check
end BoundaryConsumer034

namespace BoundaryConsumer035
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock035.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock035.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic035.q
  U := readMatrix BoundarySemantic035.q BoundarySemantic035.u
  R := BoundarySemantic035.R
  C := BoundarySemantic035.C
  J := BoundarySemantic035.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic035.A] using BoundarySemantic035.semantic_check
end BoundaryConsumer035

namespace BoundaryConsumer036
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock036.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock036.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic036.q
  U := readMatrix BoundarySemantic036.q BoundarySemantic036.u
  R := BoundarySemantic036.R
  C := BoundarySemantic036.C
  J := BoundarySemantic036.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic036.A] using BoundarySemantic036.semantic_check
end BoundaryConsumer036

namespace BoundaryConsumer037
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock037.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock037.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic037.q
  U := readMatrix BoundarySemantic037.q BoundarySemantic037.u
  R := BoundarySemantic037.R
  C := BoundarySemantic037.C
  J := BoundarySemantic037.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic037.A] using BoundarySemantic037.semantic_check
end BoundaryConsumer037

namespace BoundaryConsumer038
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock038.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock038.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic038.q
  U := readMatrix BoundarySemantic038.q BoundarySemantic038.u
  R := BoundarySemantic038.R
  C := BoundarySemantic038.C
  J := BoundarySemantic038.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic038.A] using BoundarySemantic038.semantic_check
end BoundaryConsumer038

namespace BoundaryConsumer039
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock039.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock039.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic039.q
  U := readMatrix BoundarySemantic039.q BoundarySemantic039.u
  R := BoundarySemantic039.R
  C := BoundarySemantic039.C
  J := BoundarySemantic039.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic039.A] using BoundarySemantic039.semantic_check
end BoundaryConsumer039

namespace BoundaryConsumer040
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock040.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock040.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic040.q
  U := readMatrix BoundarySemantic040.q BoundarySemantic040.u
  R := BoundarySemantic040.R
  C := BoundarySemantic040.C
  J := BoundarySemantic040.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic040.A] using BoundarySemantic040.semantic_check
end BoundaryConsumer040

namespace BoundaryConsumer041
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock041.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock041.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic041.q
  U := readMatrix BoundarySemantic041.q BoundarySemantic041.u
  R := BoundarySemantic041.R
  C := BoundarySemantic041.C
  J := BoundarySemantic041.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic041.A] using BoundarySemantic041.semantic_check
end BoundaryConsumer041

namespace BoundaryConsumer042
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock042.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock042.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic042.q
  U := readMatrix BoundarySemantic042.q BoundarySemantic042.u
  R := BoundarySemantic042.R
  C := BoundarySemantic042.C
  J := BoundarySemantic042.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic042.A] using BoundarySemantic042.semantic_check
end BoundaryConsumer042

namespace BoundaryConsumer043
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock043.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock043.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic043.q
  U := readMatrix BoundarySemantic043.q BoundarySemantic043.u
  R := BoundarySemantic043.R
  C := BoundarySemantic043.C
  J := BoundarySemantic043.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic043.A] using BoundarySemantic043.semantic_check
end BoundaryConsumer043

namespace BoundaryConsumer044
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock044.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock044.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic044.q
  U := readMatrix BoundarySemantic044.q BoundarySemantic044.u
  R := BoundarySemantic044.R
  C := BoundarySemantic044.C
  J := BoundarySemantic044.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic044.A] using BoundarySemantic044.semantic_check
end BoundaryConsumer044

namespace BoundaryConsumer045
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock045.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock045.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic045.q
  U := readMatrix BoundarySemantic045.q BoundarySemantic045.u
  R := BoundarySemantic045.R
  C := BoundarySemantic045.C
  J := BoundarySemantic045.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic045.A] using BoundarySemantic045.semantic_check
end BoundaryConsumer045

namespace BoundaryConsumer046
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock046.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock046.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic046.q
  U := readMatrix BoundarySemantic046.q BoundarySemantic046.u
  R := BoundarySemantic046.R
  C := BoundarySemantic046.C
  J := BoundarySemantic046.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic046.A] using BoundarySemantic046.semantic_check
end BoundaryConsumer046

namespace BoundaryConsumer047
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock047.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock047.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic047.q
  U := readMatrix BoundarySemantic047.q BoundarySemantic047.u
  R := BoundarySemantic047.R
  C := BoundarySemantic047.C
  J := BoundarySemantic047.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic047.A] using BoundarySemantic047.semantic_check
end BoundaryConsumer047

namespace BoundaryConsumer048
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock048.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock048.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic048.q
  U := readMatrix BoundarySemantic048.q BoundarySemantic048.u
  R := BoundarySemantic048.R
  C := BoundarySemantic048.C
  J := BoundarySemantic048.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic048.A] using BoundarySemantic048.semantic_check
end BoundaryConsumer048

namespace BoundaryConsumer049
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock049.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock049.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic049.q
  U := readMatrix BoundarySemantic049.q BoundarySemantic049.u
  R := BoundarySemantic049.R
  C := BoundarySemantic049.C
  J := BoundarySemantic049.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic049.A] using BoundarySemantic049.semantic_check
end BoundaryConsumer049

namespace BoundaryConsumer050
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock050.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock050.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic050.q
  U := readMatrix BoundarySemantic050.q BoundarySemantic050.u
  R := BoundarySemantic050.R
  C := BoundarySemantic050.C
  J := BoundarySemantic050.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic050.A] using BoundarySemantic050.semantic_check
end BoundaryConsumer050

namespace BoundaryConsumer051
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock051.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock051.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic051.q
  U := readMatrix BoundarySemantic051.q BoundarySemantic051.u
  R := BoundarySemantic051.R
  C := BoundarySemantic051.C
  J := BoundarySemantic051.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic051.A] using BoundarySemantic051.semantic_check
end BoundaryConsumer051

namespace BoundaryConsumer052
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock052.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock052.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic052.q
  U := readMatrix BoundarySemantic052.q BoundarySemantic052.u
  R := BoundarySemantic052.R
  C := BoundarySemantic052.C
  J := BoundarySemantic052.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic052.A] using BoundarySemantic052.semantic_check
end BoundaryConsumer052

namespace BoundaryConsumer053
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock053.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock053.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic053.q
  U := readMatrix BoundarySemantic053.q BoundarySemantic053.u
  R := BoundarySemantic053.R
  C := BoundarySemantic053.C
  J := BoundarySemantic053.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic053.A] using BoundarySemantic053.semantic_check
end BoundaryConsumer053

namespace BoundaryConsumer054
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock054.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock054.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic054.q
  U := readMatrix BoundarySemantic054.q BoundarySemantic054.u
  R := BoundarySemantic054.R
  C := BoundarySemantic054.C
  J := BoundarySemantic054.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic054.A] using BoundarySemantic054.semantic_check
end BoundaryConsumer054

namespace BoundaryConsumer055
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock055.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock055.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic055.q
  U := readMatrix BoundarySemantic055.q BoundarySemantic055.u
  R := BoundarySemantic055.R
  C := BoundarySemantic055.C
  J := BoundarySemantic055.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic055.A] using BoundarySemantic055.semantic_check
end BoundaryConsumer055

namespace BoundaryConsumer056
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock056.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock056.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic056.q
  U := readMatrix BoundarySemantic056.q BoundarySemantic056.u
  R := BoundarySemantic056.R
  C := BoundarySemantic056.C
  J := BoundarySemantic056.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic056.A] using BoundarySemantic056.semantic_check
end BoundaryConsumer056

namespace BoundaryConsumer057
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock057.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock057.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic057.q
  U := readMatrix BoundarySemantic057.q BoundarySemantic057.u
  R := BoundarySemantic057.R
  C := BoundarySemantic057.C
  J := BoundarySemantic057.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic057.A] using BoundarySemantic057.semantic_check
end BoundaryConsumer057

namespace BoundaryConsumer058
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock058.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock058.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic058.q
  U := readMatrix BoundarySemantic058.q BoundarySemantic058.u
  R := BoundarySemantic058.R
  C := BoundarySemantic058.C
  J := BoundarySemantic058.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic058.A] using BoundarySemantic058.semantic_check
end BoundaryConsumer058

namespace BoundaryConsumer059
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock059.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock059.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic059.q
  U := readMatrix BoundarySemantic059.q BoundarySemantic059.u
  R := BoundarySemantic059.R
  C := BoundarySemantic059.C
  J := BoundarySemantic059.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic059.A] using BoundarySemantic059.semantic_check
end BoundaryConsumer059

namespace BoundaryConsumer060
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock060.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock060.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic060.q
  U := readMatrix BoundarySemantic060.q BoundarySemantic060.u
  R := BoundarySemantic060.R
  C := BoundarySemantic060.C
  J := BoundarySemantic060.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic060.A] using BoundarySemantic060.semantic_check
end BoundaryConsumer060

namespace BoundaryConsumer061
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock061.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock061.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic061.q
  U := readMatrix BoundarySemantic061.q BoundarySemantic061.u
  R := BoundarySemantic061.R
  C := BoundarySemantic061.C
  J := BoundarySemantic061.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic061.A] using BoundarySemantic061.semantic_check
end BoundaryConsumer061

namespace BoundaryConsumer062
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock062.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock062.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic062.q
  U := readMatrix BoundarySemantic062.q BoundarySemantic062.u
  R := BoundarySemantic062.R
  C := BoundarySemantic062.C
  J := BoundarySemantic062.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic062.A] using BoundarySemantic062.semantic_check
end BoundaryConsumer062

namespace BoundaryConsumer063
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock063.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock063.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic063.q
  U := readMatrix BoundarySemantic063.q BoundarySemantic063.u
  R := BoundarySemantic063.R
  C := BoundarySemantic063.C
  J := BoundarySemantic063.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic063.A] using BoundarySemantic063.semantic_check
end BoundaryConsumer063

namespace BoundaryConsumer064
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock064.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock064.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic064.q
  U := readMatrix BoundarySemantic064.q BoundarySemantic064.u
  R := BoundarySemantic064.R
  C := BoundarySemantic064.C
  J := BoundarySemantic064.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic064.A] using BoundarySemantic064.semantic_check
end BoundaryConsumer064

namespace BoundaryConsumer065
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock065.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock065.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic065.q
  U := readMatrix BoundarySemantic065.q BoundarySemantic065.u
  R := BoundarySemantic065.R
  C := BoundarySemantic065.C
  J := BoundarySemantic065.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic065.A] using BoundarySemantic065.semantic_check
end BoundaryConsumer065

namespace BoundaryConsumer066
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock066.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock066.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic066.q
  U := readMatrix BoundarySemantic066.q BoundarySemantic066.u
  R := BoundarySemantic066.R
  C := BoundarySemantic066.C
  J := BoundarySemantic066.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic066.A] using BoundarySemantic066.semantic_check
end BoundaryConsumer066

namespace BoundaryConsumer067
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock067.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock067.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic067.q
  U := readMatrix BoundarySemantic067.q BoundarySemantic067.u
  R := BoundarySemantic067.R
  C := BoundarySemantic067.C
  J := BoundarySemantic067.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic067.A] using BoundarySemantic067.semantic_check
end BoundaryConsumer067

namespace BoundaryConsumer068
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock068.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock068.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic068.q
  U := readMatrix BoundarySemantic068.q BoundarySemantic068.u
  R := BoundarySemantic068.R
  C := BoundarySemantic068.C
  J := BoundarySemantic068.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic068.A] using BoundarySemantic068.semantic_check
end BoundaryConsumer068

namespace BoundaryConsumer069
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock069.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock069.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic069.q
  U := readMatrix BoundarySemantic069.q BoundarySemantic069.u
  R := BoundarySemantic069.R
  C := BoundarySemantic069.C
  J := BoundarySemantic069.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic069.A] using BoundarySemantic069.semantic_check
end BoundaryConsumer069

namespace BoundaryConsumer070
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock070.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock070.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic070.q
  U := readMatrix BoundarySemantic070.q BoundarySemantic070.u
  R := BoundarySemantic070.R
  C := BoundarySemantic070.C
  J := BoundarySemantic070.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic070.A] using BoundarySemantic070.semantic_check
end BoundaryConsumer070

namespace BoundaryConsumer071
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock071.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock071.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic071.q
  U := readMatrix BoundarySemantic071.q BoundarySemantic071.u
  R := BoundarySemantic071.R
  C := BoundarySemantic071.C
  J := BoundarySemantic071.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic071.A] using BoundarySemantic071.semantic_check
end BoundaryConsumer071

namespace BoundaryConsumer072
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock072.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock072.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic072.q
  U := readMatrix BoundarySemantic072.q BoundarySemantic072.u
  R := BoundarySemantic072.R
  C := BoundarySemantic072.C
  J := BoundarySemantic072.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic072.A] using BoundarySemantic072.semantic_check
end BoundaryConsumer072

namespace BoundaryConsumer073
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock073.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock073.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic073.q
  U := readMatrix BoundarySemantic073.q BoundarySemantic073.u
  R := BoundarySemantic073.R
  C := BoundarySemantic073.C
  J := BoundarySemantic073.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic073.A] using BoundarySemantic073.semantic_check
end BoundaryConsumer073

namespace BoundaryConsumer074
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock074.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock074.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic074.q
  U := readMatrix BoundarySemantic074.q BoundarySemantic074.u
  R := BoundarySemantic074.R
  C := BoundarySemantic074.C
  J := BoundarySemantic074.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic074.A] using BoundarySemantic074.semantic_check
end BoundaryConsumer074

namespace BoundaryConsumer075
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock075.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock075.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic075.q
  U := readMatrix BoundarySemantic075.q BoundarySemantic075.u
  R := BoundarySemantic075.R
  C := BoundarySemantic075.C
  J := BoundarySemantic075.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic075.A] using BoundarySemantic075.semantic_check
end BoundaryConsumer075

namespace BoundaryConsumer076
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock076.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock076.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic076.q
  U := readMatrix BoundarySemantic076.q BoundarySemantic076.u
  R := BoundarySemantic076.R
  C := BoundarySemantic076.C
  J := BoundarySemantic076.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic076.A] using BoundarySemantic076.semantic_check
end BoundaryConsumer076

namespace BoundaryConsumer077
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock077.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock077.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic077.q
  U := readMatrix BoundarySemantic077.q BoundarySemantic077.u
  R := BoundarySemantic077.R
  C := BoundarySemantic077.C
  J := BoundarySemantic077.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic077.A] using BoundarySemantic077.semantic_check
end BoundaryConsumer077

namespace BoundaryConsumer078
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock078.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock078.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic078.q
  U := readMatrix BoundarySemantic078.q BoundarySemantic078.u
  R := BoundarySemantic078.R
  C := BoundarySemantic078.C
  J := BoundarySemantic078.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic078.A] using BoundarySemantic078.semantic_check
end BoundaryConsumer078

namespace BoundaryConsumer079
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock079.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock079.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic079.q
  U := readMatrix BoundarySemantic079.q BoundarySemantic079.u
  R := BoundarySemantic079.R
  C := BoundarySemantic079.C
  J := BoundarySemantic079.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic079.A] using BoundarySemantic079.semantic_check
end BoundaryConsumer079

namespace BoundaryConsumer080
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock080.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock080.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic080.q
  U := readMatrix BoundarySemantic080.q BoundarySemantic080.u
  R := BoundarySemantic080.R
  C := BoundarySemantic080.C
  J := BoundarySemantic080.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic080.A] using BoundarySemantic080.semantic_check
end BoundaryConsumer080

namespace BoundaryConsumer081
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock081.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock081.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic081.q
  U := readMatrix BoundarySemantic081.q BoundarySemantic081.u
  R := BoundarySemantic081.R
  C := BoundarySemantic081.C
  J := BoundarySemantic081.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic081.A] using BoundarySemantic081.semantic_check
end BoundaryConsumer081

namespace BoundaryConsumer082
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock082.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock082.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic082.q
  U := readMatrix BoundarySemantic082.q BoundarySemantic082.u
  R := BoundarySemantic082.R
  C := BoundarySemantic082.C
  J := BoundarySemantic082.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic082.A] using BoundarySemantic082.semantic_check
end BoundaryConsumer082

namespace BoundaryConsumer083
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock083.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock083.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic083.q
  U := readMatrix BoundarySemantic083.q BoundarySemantic083.u
  R := BoundarySemantic083.R
  C := BoundarySemantic083.C
  J := BoundarySemantic083.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic083.A] using BoundarySemantic083.semantic_check
end BoundaryConsumer083

namespace BoundaryConsumer084
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock084.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock084.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic084.q
  U := readMatrix BoundarySemantic084.q BoundarySemantic084.u
  R := BoundarySemantic084.R
  C := BoundarySemantic084.C
  J := BoundarySemantic084.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic084.A] using BoundarySemantic084.semantic_check
end BoundaryConsumer084

namespace BoundaryConsumer085
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock085.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock085.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic085.q
  U := readMatrix BoundarySemantic085.q BoundarySemantic085.u
  R := BoundarySemantic085.R
  C := BoundarySemantic085.C
  J := BoundarySemantic085.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic085.A] using BoundarySemantic085.semantic_check
end BoundaryConsumer085

namespace BoundaryConsumer086
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock086.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock086.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic086.q
  U := readMatrix BoundarySemantic086.q BoundarySemantic086.u
  R := BoundarySemantic086.R
  C := BoundarySemantic086.C
  J := BoundarySemantic086.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic086.A] using BoundarySemantic086.semantic_check
end BoundaryConsumer086

namespace BoundaryConsumer087
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock087.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock087.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic087.q
  U := readMatrix BoundarySemantic087.q BoundarySemantic087.u
  R := BoundarySemantic087.R
  C := BoundarySemantic087.C
  J := BoundarySemantic087.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic087.A] using BoundarySemantic087.semantic_check
end BoundaryConsumer087

namespace BoundaryConsumer088
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock088.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock088.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic088.q
  U := readMatrix BoundarySemantic088.q BoundarySemantic088.u
  R := BoundarySemantic088.R
  C := BoundarySemantic088.C
  J := BoundarySemantic088.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic088.A] using BoundarySemantic088.semantic_check
end BoundaryConsumer088

namespace BoundaryConsumer089
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock089.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock089.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic089.q
  U := readMatrix BoundarySemantic089.q BoundarySemantic089.u
  R := BoundarySemantic089.R
  C := BoundarySemantic089.C
  J := BoundarySemantic089.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic089.A] using BoundarySemantic089.semantic_check
end BoundaryConsumer089

namespace BoundaryConsumer090
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock090.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock090.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic090.q
  U := readMatrix BoundarySemantic090.q BoundarySemantic090.u
  R := BoundarySemantic090.R
  C := BoundarySemantic090.C
  J := BoundarySemantic090.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic090.A] using BoundarySemantic090.semantic_check
end BoundaryConsumer090

namespace BoundaryConsumer091
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock091.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock091.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic091.q
  U := readMatrix BoundarySemantic091.q BoundarySemantic091.u
  R := BoundarySemantic091.R
  C := BoundarySemantic091.C
  J := BoundarySemantic091.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic091.A] using BoundarySemantic091.semantic_check
end BoundaryConsumer091

namespace BoundaryConsumer092
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock092.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock092.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic092.q
  U := readMatrix BoundarySemantic092.q BoundarySemantic092.u
  R := BoundarySemantic092.R
  C := BoundarySemantic092.C
  J := BoundarySemantic092.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic092.A] using BoundarySemantic092.semantic_check
end BoundaryConsumer092

namespace BoundaryConsumer093
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock093.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock093.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic093.q
  U := readMatrix BoundarySemantic093.q BoundarySemantic093.u
  R := BoundarySemantic093.R
  C := BoundarySemantic093.C
  J := BoundarySemantic093.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic093.A] using BoundarySemantic093.semantic_check
end BoundaryConsumer093

namespace BoundaryConsumer094
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock094.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock094.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic094.q
  U := readMatrix BoundarySemantic094.q BoundarySemantic094.u
  R := BoundarySemantic094.R
  C := BoundarySemantic094.C
  J := BoundarySemantic094.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic094.A] using BoundarySemantic094.semantic_check
end BoundaryConsumer094

namespace BoundaryConsumer095
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock095.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock095.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic095.q
  U := readMatrix BoundarySemantic095.q BoundarySemantic095.u
  R := BoundarySemantic095.R
  C := BoundarySemantic095.C
  J := BoundarySemantic095.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic095.A] using BoundarySemantic095.semantic_check
end BoundaryConsumer095

namespace BoundaryConsumer096
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock096.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock096.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic096.q
  U := readMatrix BoundarySemantic096.q BoundarySemantic096.u
  R := BoundarySemantic096.R
  C := BoundarySemantic096.C
  J := BoundarySemantic096.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic096.A] using BoundarySemantic096.semantic_check
end BoundaryConsumer096

namespace BoundaryConsumer097
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock097.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock097.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic097.q
  U := readMatrix BoundarySemantic097.q BoundarySemantic097.u
  R := BoundarySemantic097.R
  C := BoundarySemantic097.C
  J := BoundarySemantic097.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic097.A] using BoundarySemantic097.semantic_check
end BoundaryConsumer097

namespace BoundaryConsumer098
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock098.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock098.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic098.q
  U := readMatrix BoundarySemantic098.q BoundarySemantic098.u
  R := BoundarySemantic098.R
  C := BoundarySemantic098.C
  J := BoundarySemantic098.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic098.A] using BoundarySemantic098.semantic_check
end BoundaryConsumer098

namespace BoundaryConsumer099
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock099.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock099.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic099.q
  U := readMatrix BoundarySemantic099.q BoundarySemantic099.u
  R := BoundarySemantic099.R
  C := BoundarySemantic099.C
  J := BoundarySemantic099.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic099.A] using BoundarySemantic099.semantic_check
end BoundaryConsumer099

namespace BoundaryConsumer100
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock100.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock100.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic100.q
  U := readMatrix BoundarySemantic100.q BoundarySemantic100.u
  R := BoundarySemantic100.R
  C := BoundarySemantic100.C
  J := BoundarySemantic100.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic100.A] using BoundarySemantic100.semantic_check
end BoundaryConsumer100

namespace BoundaryConsumer101
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock101.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock101.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic101.q
  U := readMatrix BoundarySemantic101.q BoundarySemantic101.u
  R := BoundarySemantic101.R
  C := BoundarySemantic101.C
  J := BoundarySemantic101.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic101.A] using BoundarySemantic101.semantic_check
end BoundaryConsumer101

namespace BoundaryConsumer102
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock102.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock102.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic102.q
  U := readMatrix BoundarySemantic102.q BoundarySemantic102.u
  R := BoundarySemantic102.R
  C := BoundarySemantic102.C
  J := BoundarySemantic102.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic102.A] using BoundarySemantic102.semantic_check
end BoundaryConsumer102

namespace BoundaryConsumer103
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock103.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock103.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic103.q
  U := readMatrix BoundarySemantic103.q BoundarySemantic103.u
  R := BoundarySemantic103.R
  C := BoundarySemantic103.C
  J := BoundarySemantic103.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic103.A] using BoundarySemantic103.semantic_check
end BoundaryConsumer103

namespace BoundaryConsumer104
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock104.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock104.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic104.q
  U := readMatrix BoundarySemantic104.q BoundarySemantic104.u
  R := BoundarySemantic104.R
  C := BoundarySemantic104.C
  J := BoundarySemantic104.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic104.A] using BoundarySemantic104.semantic_check
end BoundaryConsumer104

namespace BoundaryConsumer105
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock105.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock105.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic105.q
  U := readMatrix BoundarySemantic105.q BoundarySemantic105.u
  R := BoundarySemantic105.R
  C := BoundarySemantic105.C
  J := BoundarySemantic105.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic105.A] using BoundarySemantic105.semantic_check
end BoundaryConsumer105

namespace BoundaryConsumer106
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock106.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock106.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic106.q
  U := readMatrix BoundarySemantic106.q BoundarySemantic106.u
  R := BoundarySemantic106.R
  C := BoundarySemantic106.C
  J := BoundarySemantic106.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic106.A] using BoundarySemantic106.semantic_check
end BoundaryConsumer106

namespace BoundaryConsumer107
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock107.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock107.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic107.q
  U := readMatrix BoundarySemantic107.q BoundarySemantic107.u
  R := BoundarySemantic107.R
  C := BoundarySemantic107.C
  J := BoundarySemantic107.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic107.A] using BoundarySemantic107.semantic_check
end BoundaryConsumer107

namespace BoundaryConsumer108
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock108.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock108.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic108.q
  U := readMatrix BoundarySemantic108.q BoundarySemantic108.u
  R := BoundarySemantic108.R
  C := BoundarySemantic108.C
  J := BoundarySemantic108.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic108.A] using BoundarySemantic108.semantic_check
end BoundaryConsumer108

namespace BoundaryConsumer109
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock109.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock109.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic109.q
  U := readMatrix BoundarySemantic109.q BoundarySemantic109.u
  R := BoundarySemantic109.R
  C := BoundarySemantic109.C
  J := BoundarySemantic109.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic109.A] using BoundarySemantic109.semantic_check
end BoundaryConsumer109

namespace BoundaryConsumer110
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock110.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock110.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic110.q
  U := readMatrix BoundarySemantic110.q BoundarySemantic110.u
  R := BoundarySemantic110.R
  C := BoundarySemantic110.C
  J := BoundarySemantic110.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic110.A] using BoundarySemantic110.semantic_check
end BoundaryConsumer110

namespace BoundaryConsumer111
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock111.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock111.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic111.q
  U := readMatrix BoundarySemantic111.q BoundarySemantic111.u
  R := BoundarySemantic111.R
  C := BoundarySemantic111.C
  J := BoundarySemantic111.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic111.A] using BoundarySemantic111.semantic_check
end BoundaryConsumer111

namespace BoundaryConsumer112
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock112.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock112.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic112.q
  U := readMatrix BoundarySemantic112.q BoundarySemantic112.u
  R := BoundarySemantic112.R
  C := BoundarySemantic112.C
  J := BoundarySemantic112.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic112.A] using BoundarySemantic112.semantic_check
end BoundaryConsumer112

namespace BoundaryConsumer113
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock113.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock113.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic113.q
  U := readMatrix BoundarySemantic113.q BoundarySemantic113.u
  R := BoundarySemantic113.R
  C := BoundarySemantic113.C
  J := BoundarySemantic113.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic113.A] using BoundarySemantic113.semantic_check
end BoundaryConsumer113

namespace BoundaryConsumer114
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock114.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock114.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic114.q
  U := readMatrix BoundarySemantic114.q BoundarySemantic114.u
  R := BoundarySemantic114.R
  C := BoundarySemantic114.C
  J := BoundarySemantic114.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic114.A] using BoundarySemantic114.semantic_check
end BoundaryConsumer114

namespace BoundaryConsumer115
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock115.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock115.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic115.q
  U := readMatrix BoundarySemantic115.q BoundarySemantic115.u
  R := BoundarySemantic115.R
  C := BoundarySemantic115.C
  J := BoundarySemantic115.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic115.A] using BoundarySemantic115.semantic_check
end BoundaryConsumer115

namespace BoundaryConsumer116
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock116.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock116.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic116.q
  U := readMatrix BoundarySemantic116.q BoundarySemantic116.u
  R := BoundarySemantic116.R
  C := BoundarySemantic116.C
  J := BoundarySemantic116.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic116.A] using BoundarySemantic116.semantic_check
end BoundaryConsumer116

namespace BoundaryConsumer117
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock117.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock117.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic117.q
  U := readMatrix BoundarySemantic117.q BoundarySemantic117.u
  R := BoundarySemantic117.R
  C := BoundarySemantic117.C
  J := BoundarySemantic117.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic117.A] using BoundarySemantic117.semantic_check
end BoundaryConsumer117

namespace BoundaryConsumer118
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock118.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock118.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic118.q
  U := readMatrix BoundarySemantic118.q BoundarySemantic118.u
  R := BoundarySemantic118.R
  C := BoundarySemantic118.C
  J := BoundarySemantic118.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic118.A] using BoundarySemantic118.semantic_check
end BoundaryConsumer118

namespace BoundaryConsumer119
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock119.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock119.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic119.q
  U := readMatrix BoundarySemantic119.q BoundarySemantic119.u
  R := BoundarySemantic119.R
  C := BoundarySemantic119.C
  J := BoundarySemantic119.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic119.A] using BoundarySemantic119.semantic_check
end BoundaryConsumer119

namespace BoundaryConsumer120
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock120.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock120.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic120.q
  U := readMatrix BoundarySemantic120.q BoundarySemantic120.u
  R := BoundarySemantic120.R
  C := BoundarySemantic120.C
  J := BoundarySemantic120.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic120.A] using BoundarySemantic120.semantic_check
end BoundaryConsumer120

namespace BoundaryConsumer121
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock121.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock121.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic121.q
  U := readMatrix BoundarySemantic121.q BoundarySemantic121.u
  R := BoundarySemantic121.R
  C := BoundarySemantic121.C
  J := BoundarySemantic121.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic121.A] using BoundarySemantic121.semantic_check
end BoundaryConsumer121

namespace BoundaryConsumer122
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock122.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock122.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic122.q
  U := readMatrix BoundarySemantic122.q BoundarySemantic122.u
  R := BoundarySemantic122.R
  C := BoundarySemantic122.C
  J := BoundarySemantic122.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic122.A] using BoundarySemantic122.semantic_check
end BoundaryConsumer122

namespace BoundaryConsumer123
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock123.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock123.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic123.q
  U := readMatrix BoundarySemantic123.q BoundarySemantic123.u
  R := BoundarySemantic123.R
  C := BoundarySemantic123.C
  J := BoundarySemantic123.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic123.A] using BoundarySemantic123.semantic_check
end BoundaryConsumer123

namespace BoundaryConsumer124
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock124.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock124.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic124.q
  U := readMatrix BoundarySemantic124.q BoundarySemantic124.u
  R := BoundarySemantic124.R
  C := BoundarySemantic124.C
  J := BoundarySemantic124.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic124.A] using BoundarySemantic124.semantic_check
end BoundaryConsumer124

namespace BoundaryConsumer125
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock125.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock125.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic125.q
  U := readMatrix BoundarySemantic125.q BoundarySemantic125.u
  R := BoundarySemantic125.R
  C := BoundarySemantic125.C
  J := BoundarySemantic125.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic125.A] using BoundarySemantic125.semantic_check
end BoundaryConsumer125

namespace BoundaryConsumer126
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock126.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock126.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic126.q
  U := readMatrix BoundarySemantic126.q BoundarySemantic126.u
  R := BoundarySemantic126.R
  C := BoundarySemantic126.C
  J := BoundarySemantic126.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic126.A] using BoundarySemantic126.semantic_check
end BoundaryConsumer126

namespace BoundaryConsumer127
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock127.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock127.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic127.q
  U := readMatrix BoundarySemantic127.q BoundarySemantic127.u
  R := BoundarySemantic127.R
  C := BoundarySemantic127.C
  J := BoundarySemantic127.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic127.A] using BoundarySemantic127.semantic_check
end BoundaryConsumer127

namespace BoundaryConsumer128
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock128.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock128.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic128.q
  U := readMatrix BoundarySemantic128.q BoundarySemantic128.u
  R := BoundarySemantic128.R
  C := BoundarySemantic128.C
  J := BoundarySemantic128.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic128.A] using BoundarySemantic128.semantic_check
end BoundaryConsumer128

namespace BoundaryConsumer129
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock129.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock129.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic129.q
  U := readMatrix BoundarySemantic129.q BoundarySemantic129.u
  R := BoundarySemantic129.R
  C := BoundarySemantic129.C
  J := BoundarySemantic129.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic129.A] using BoundarySemantic129.semantic_check
end BoundaryConsumer129

namespace BoundaryConsumer130
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock130.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock130.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic130.q
  U := readMatrix BoundarySemantic130.q BoundarySemantic130.u
  R := BoundarySemantic130.R
  C := BoundarySemantic130.C
  J := BoundarySemantic130.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic130.A] using BoundarySemantic130.semantic_check
end BoundaryConsumer130

namespace BoundaryConsumer131
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock131.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock131.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic131.q
  U := readMatrix BoundarySemantic131.q BoundarySemantic131.u
  R := BoundarySemantic131.R
  C := BoundarySemantic131.C
  J := BoundarySemantic131.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic131.A] using BoundarySemantic131.semantic_check
end BoundaryConsumer131

namespace BoundaryConsumer132
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock132.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock132.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic132.q
  U := readMatrix BoundarySemantic132.q BoundarySemantic132.u
  R := BoundarySemantic132.R
  C := BoundarySemantic132.C
  J := BoundarySemantic132.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic132.A] using BoundarySemantic132.semantic_check
end BoundaryConsumer132

namespace BoundaryConsumer133
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock133.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock133.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic133.q
  U := readMatrix BoundarySemantic133.q BoundarySemantic133.u
  R := BoundarySemantic133.R
  C := BoundarySemantic133.C
  J := BoundarySemantic133.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic133.A] using BoundarySemantic133.semantic_check
end BoundaryConsumer133

namespace BoundaryConsumer134
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock134.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock134.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic134.q
  U := readMatrix BoundarySemantic134.q BoundarySemantic134.u
  R := BoundarySemantic134.R
  C := BoundarySemantic134.C
  J := BoundarySemantic134.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic134.A] using BoundarySemantic134.semantic_check
end BoundaryConsumer134

namespace BoundaryConsumer135
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock135.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock135.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic135.q
  U := readMatrix BoundarySemantic135.q BoundarySemantic135.u
  R := BoundarySemantic135.R
  C := BoundarySemantic135.C
  J := BoundarySemantic135.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic135.A] using BoundarySemantic135.semantic_check
end BoundaryConsumer135

namespace BoundaryConsumer136
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock136.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock136.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic136.q
  U := readMatrix BoundarySemantic136.q BoundarySemantic136.u
  R := BoundarySemantic136.R
  C := BoundarySemantic136.C
  J := BoundarySemantic136.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic136.A] using BoundarySemantic136.semantic_check
end BoundaryConsumer136

namespace BoundaryConsumer137
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock137.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock137.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic137.q
  U := readMatrix BoundarySemantic137.q BoundarySemantic137.u
  R := BoundarySemantic137.R
  C := BoundarySemantic137.C
  J := BoundarySemantic137.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic137.A] using BoundarySemantic137.semantic_check
end BoundaryConsumer137

namespace BoundaryConsumer138
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock138.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock138.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic138.q
  U := readMatrix BoundarySemantic138.q BoundarySemantic138.u
  R := BoundarySemantic138.R
  C := BoundarySemantic138.C
  J := BoundarySemantic138.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic138.A] using BoundarySemantic138.semantic_check
end BoundaryConsumer138

namespace BoundaryConsumer139
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock139.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock139.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic139.q
  U := readMatrix BoundarySemantic139.q BoundarySemantic139.u
  R := BoundarySemantic139.R
  C := BoundarySemantic139.C
  J := BoundarySemantic139.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic139.A] using BoundarySemantic139.semantic_check
end BoundaryConsumer139

namespace BoundaryConsumer140
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock140.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock140.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic140.q
  U := readMatrix BoundarySemantic140.q BoundarySemantic140.u
  R := BoundarySemantic140.R
  C := BoundarySemantic140.C
  J := BoundarySemantic140.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic140.A] using BoundarySemantic140.semantic_check
end BoundaryConsumer140

namespace BoundaryConsumer141
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock141.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock141.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic141.q
  U := readMatrix BoundarySemantic141.q BoundarySemantic141.u
  R := BoundarySemantic141.R
  C := BoundarySemantic141.C
  J := BoundarySemantic141.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic141.A] using BoundarySemantic141.semantic_check
end BoundaryConsumer141

namespace BoundaryConsumer142
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock142.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock142.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic142.q
  U := readMatrix BoundarySemantic142.q BoundarySemantic142.u
  R := BoundarySemantic142.R
  C := BoundarySemantic142.C
  J := BoundarySemantic142.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic142.A] using BoundarySemantic142.semantic_check
end BoundaryConsumer142

namespace BoundaryConsumer143
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock143.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock143.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic143.q
  U := readMatrix BoundarySemantic143.q BoundarySemantic143.u
  R := BoundarySemantic143.R
  C := BoundarySemantic143.C
  J := BoundarySemantic143.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic143.A] using BoundarySemantic143.semantic_check
end BoundaryConsumer143

namespace BoundaryConsumer144
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock144.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock144.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic144.q
  U := readMatrix BoundarySemantic144.q BoundarySemantic144.u
  R := BoundarySemantic144.R
  C := BoundarySemantic144.C
  J := BoundarySemantic144.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic144.A] using BoundarySemantic144.semantic_check
end BoundaryConsumer144

namespace BoundaryConsumer145
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock145.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock145.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic145.q
  U := readMatrix BoundarySemantic145.q BoundarySemantic145.u
  R := BoundarySemantic145.R
  C := BoundarySemantic145.C
  J := BoundarySemantic145.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic145.A] using BoundarySemantic145.semantic_check
end BoundaryConsumer145

namespace BoundaryConsumer146
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock146.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock146.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic146.q
  U := readMatrix BoundarySemantic146.q BoundarySemantic146.u
  R := BoundarySemantic146.R
  C := BoundarySemantic146.C
  J := BoundarySemantic146.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic146.A] using BoundarySemantic146.semantic_check
end BoundaryConsumer146

namespace BoundaryConsumer147
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock147.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock147.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic147.q
  U := readMatrix BoundarySemantic147.q BoundarySemantic147.u
  R := BoundarySemantic147.R
  C := BoundarySemantic147.C
  J := BoundarySemantic147.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic147.A] using BoundarySemantic147.semantic_check
end BoundaryConsumer147

namespace BoundaryConsumer148
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock148.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock148.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic148.q
  U := readMatrix BoundarySemantic148.q BoundarySemantic148.u
  R := BoundarySemantic148.R
  C := BoundarySemantic148.C
  J := BoundarySemantic148.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic148.A] using BoundarySemantic148.semantic_check
end BoundaryConsumer148

namespace BoundaryConsumer149
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock149.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock149.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic149.q
  U := readMatrix BoundarySemantic149.q BoundarySemantic149.u
  R := BoundarySemantic149.R
  C := BoundarySemantic149.C
  J := BoundarySemantic149.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic149.A] using BoundarySemantic149.semantic_check
end BoundaryConsumer149

namespace BoundaryConsumer150
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock150.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock150.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic150.q
  U := readMatrix BoundarySemantic150.q BoundarySemantic150.u
  R := BoundarySemantic150.R
  C := BoundarySemantic150.C
  J := BoundarySemantic150.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic150.A] using BoundarySemantic150.semantic_check
end BoundaryConsumer150

namespace BoundaryConsumer151
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock151.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock151.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic151.q
  U := readMatrix BoundarySemantic151.q BoundarySemantic151.u
  R := BoundarySemantic151.R
  C := BoundarySemantic151.C
  J := BoundarySemantic151.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic151.A] using BoundarySemantic151.semantic_check
end BoundaryConsumer151

namespace BoundaryConsumer152
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock152.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock152.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic152.q
  U := readMatrix BoundarySemantic152.q BoundarySemantic152.u
  R := BoundarySemantic152.R
  C := BoundarySemantic152.C
  J := BoundarySemantic152.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic152.A] using BoundarySemantic152.semantic_check
end BoundaryConsumer152

namespace BoundaryConsumer153
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock153.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock153.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic153.q
  U := readMatrix BoundarySemantic153.q BoundarySemantic153.u
  R := BoundarySemantic153.R
  C := BoundarySemantic153.C
  J := BoundarySemantic153.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic153.A] using BoundarySemantic153.semantic_check
end BoundaryConsumer153

namespace BoundaryConsumer154
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock154.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock154.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic154.q
  U := readMatrix BoundarySemantic154.q BoundarySemantic154.u
  R := BoundarySemantic154.R
  C := BoundarySemantic154.C
  J := BoundarySemantic154.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic154.A] using BoundarySemantic154.semantic_check
end BoundaryConsumer154

namespace BoundaryConsumer155
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock155.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock155.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic155.q
  U := readMatrix BoundarySemantic155.q BoundarySemantic155.u
  R := BoundarySemantic155.R
  C := BoundarySemantic155.C
  J := BoundarySemantic155.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic155.A] using BoundarySemantic155.semantic_check
end BoundaryConsumer155

namespace BoundaryConsumer156
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock156.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock156.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic156.q
  U := readMatrix BoundarySemantic156.q BoundarySemantic156.u
  R := BoundarySemantic156.R
  C := BoundarySemantic156.C
  J := BoundarySemantic156.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic156.A] using BoundarySemantic156.semantic_check
end BoundaryConsumer156

namespace BoundaryConsumer157
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock157.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock157.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic157.q
  U := readMatrix BoundarySemantic157.q BoundarySemantic157.u
  R := BoundarySemantic157.R
  C := BoundarySemantic157.C
  J := BoundarySemantic157.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic157.A] using BoundarySemantic157.semantic_check
end BoundaryConsumer157

namespace BoundaryConsumer158
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock158.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock158.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic158.q
  U := readMatrix BoundarySemantic158.q BoundarySemantic158.u
  R := BoundarySemantic158.R
  C := BoundarySemantic158.C
  J := BoundarySemantic158.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic158.A] using BoundarySemantic158.semantic_check
end BoundaryConsumer158

namespace BoundaryConsumer159
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock159.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock159.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic159.q
  U := readMatrix BoundarySemantic159.q BoundarySemantic159.u
  R := BoundarySemantic159.R
  C := BoundarySemantic159.C
  J := BoundarySemantic159.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic159.A] using BoundarySemantic159.semantic_check
end BoundaryConsumer159

namespace BoundaryConsumer160
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock160.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock160.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic160.q
  U := readMatrix BoundarySemantic160.q BoundarySemantic160.u
  R := BoundarySemantic160.R
  C := BoundarySemantic160.C
  J := BoundarySemantic160.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic160.A] using BoundarySemantic160.semantic_check
end BoundaryConsumer160

namespace BoundaryConsumer161
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock161.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock161.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic161.q
  U := readMatrix BoundarySemantic161.q BoundarySemantic161.u
  R := BoundarySemantic161.R
  C := BoundarySemantic161.C
  J := BoundarySemantic161.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic161.A] using BoundarySemantic161.semantic_check
end BoundaryConsumer161

namespace BoundaryConsumer162
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock162.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock162.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic162.q
  U := readMatrix BoundarySemantic162.q BoundarySemantic162.u
  R := BoundarySemantic162.R
  C := BoundarySemantic162.C
  J := BoundarySemantic162.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic162.A] using BoundarySemantic162.semantic_check
end BoundaryConsumer162

namespace BoundaryConsumer163
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock163.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock163.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic163.q
  U := readMatrix BoundarySemantic163.q BoundarySemantic163.u
  R := BoundarySemantic163.R
  C := BoundarySemantic163.C
  J := BoundarySemantic163.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic163.A] using BoundarySemantic163.semantic_check
end BoundaryConsumer163

namespace BoundaryConsumer164
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock164.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock164.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic164.q
  U := readMatrix BoundarySemantic164.q BoundarySemantic164.u
  R := BoundarySemantic164.R
  C := BoundarySemantic164.C
  J := BoundarySemantic164.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic164.A] using BoundarySemantic164.semantic_check
end BoundaryConsumer164

namespace BoundaryConsumer165
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock165.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock165.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic165.q
  U := readMatrix BoundarySemantic165.q BoundarySemantic165.u
  R := BoundarySemantic165.R
  C := BoundarySemantic165.C
  J := BoundarySemantic165.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic165.A] using BoundarySemantic165.semantic_check
end BoundaryConsumer165

namespace BoundaryConsumer166
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock166.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock166.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic166.q
  U := readMatrix BoundarySemantic166.q BoundarySemantic166.u
  R := BoundarySemantic166.R
  C := BoundarySemantic166.C
  J := BoundarySemantic166.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic166.A] using BoundarySemantic166.semantic_check
end BoundaryConsumer166

namespace BoundaryConsumer167
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock167.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock167.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic167.q
  U := readMatrix BoundarySemantic167.q BoundarySemantic167.u
  R := BoundarySemantic167.R
  C := BoundarySemantic167.C
  J := BoundarySemantic167.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic167.A] using BoundarySemantic167.semantic_check
end BoundaryConsumer167

namespace BoundaryConsumer168
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock168.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock168.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic168.q
  U := readMatrix BoundarySemantic168.q BoundarySemantic168.u
  R := BoundarySemantic168.R
  C := BoundarySemantic168.C
  J := BoundarySemantic168.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic168.A] using BoundarySemantic168.semantic_check
end BoundaryConsumer168

namespace BoundaryConsumer169
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock169.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock169.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic169.q
  U := readMatrix BoundarySemantic169.q BoundarySemantic169.u
  R := BoundarySemantic169.R
  C := BoundarySemantic169.C
  J := BoundarySemantic169.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic169.A] using BoundarySemantic169.semantic_check
end BoundaryConsumer169

namespace BoundaryConsumer170
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock170.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock170.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic170.q
  U := readMatrix BoundarySemantic170.q BoundarySemantic170.u
  R := BoundarySemantic170.R
  C := BoundarySemantic170.C
  J := BoundarySemantic170.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic170.A] using BoundarySemantic170.semantic_check
end BoundaryConsumer170

namespace BoundaryConsumer171
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock171.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock171.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic171.q
  U := readMatrix BoundarySemantic171.q BoundarySemantic171.u
  R := BoundarySemantic171.R
  C := BoundarySemantic171.C
  J := BoundarySemantic171.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic171.A] using BoundarySemantic171.semantic_check
end BoundaryConsumer171

namespace BoundaryConsumer172
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock172.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock172.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic172.q
  U := readMatrix BoundarySemantic172.q BoundarySemantic172.u
  R := BoundarySemantic172.R
  C := BoundarySemantic172.C
  J := BoundarySemantic172.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic172.A] using BoundarySemantic172.semantic_check
end BoundaryConsumer172

namespace BoundaryConsumer173
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock173.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock173.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic173.q
  U := readMatrix BoundarySemantic173.q BoundarySemantic173.u
  R := BoundarySemantic173.R
  C := BoundarySemantic173.C
  J := BoundarySemantic173.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic173.A] using BoundarySemantic173.semantic_check
end BoundaryConsumer173

namespace BoundaryConsumer174
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock174.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock174.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic174.q
  U := readMatrix BoundarySemantic174.q BoundarySemantic174.u
  R := BoundarySemantic174.R
  C := BoundarySemantic174.C
  J := BoundarySemantic174.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic174.A] using BoundarySemantic174.semantic_check
end BoundaryConsumer174

namespace BoundaryConsumer175
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock175.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock175.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic175.q
  U := readMatrix BoundarySemantic175.q BoundarySemantic175.u
  R := BoundarySemantic175.R
  C := BoundarySemantic175.C
  J := BoundarySemantic175.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic175.A] using BoundarySemantic175.semantic_check
end BoundaryConsumer175

namespace BoundaryConsumer176
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock176.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock176.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic176.q
  U := readMatrix BoundarySemantic176.q BoundarySemantic176.u
  R := BoundarySemantic176.R
  C := BoundarySemantic176.C
  J := BoundarySemantic176.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic176.A] using BoundarySemantic176.semantic_check
end BoundaryConsumer176

namespace BoundaryConsumer177
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock177.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock177.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic177.q
  U := readMatrix BoundarySemantic177.q BoundarySemantic177.u
  R := BoundarySemantic177.R
  C := BoundarySemantic177.C
  J := BoundarySemantic177.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic177.A] using BoundarySemantic177.semantic_check
end BoundaryConsumer177

namespace BoundaryConsumer178
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock178.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock178.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic178.q
  U := readMatrix BoundarySemantic178.q BoundarySemantic178.u
  R := BoundarySemantic178.R
  C := BoundarySemantic178.C
  J := BoundarySemantic178.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic178.A] using BoundarySemantic178.semantic_check
end BoundaryConsumer178

namespace BoundaryConsumer179
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock179.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock179.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic179.q
  U := readMatrix BoundarySemantic179.q BoundarySemantic179.u
  R := BoundarySemantic179.R
  C := BoundarySemantic179.C
  J := BoundarySemantic179.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic179.A] using BoundarySemantic179.semantic_check
end BoundaryConsumer179

namespace BoundaryConsumer180
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock180.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock180.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic180.q
  U := readMatrix BoundarySemantic180.q BoundarySemantic180.u
  R := BoundarySemantic180.R
  C := BoundarySemantic180.C
  J := BoundarySemantic180.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic180.A] using BoundarySemantic180.semantic_check
end BoundaryConsumer180

namespace BoundaryConsumer181
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock181.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock181.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic181.q
  U := readMatrix BoundarySemantic181.q BoundarySemantic181.u
  R := BoundarySemantic181.R
  C := BoundarySemantic181.C
  J := BoundarySemantic181.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic181.A] using BoundarySemantic181.semantic_check
end BoundaryConsumer181

namespace BoundaryConsumer182
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock182.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock182.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic182.q
  U := readMatrix BoundarySemantic182.q BoundarySemantic182.u
  R := BoundarySemantic182.R
  C := BoundarySemantic182.C
  J := BoundarySemantic182.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic182.A] using BoundarySemantic182.semantic_check
end BoundaryConsumer182

namespace BoundaryConsumer183
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock183.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock183.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic183.q
  U := readMatrix BoundarySemantic183.q BoundarySemantic183.u
  R := BoundarySemantic183.R
  C := BoundarySemantic183.C
  J := BoundarySemantic183.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic183.A] using BoundarySemantic183.semantic_check
end BoundaryConsumer183

namespace BoundaryConsumer184
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock184.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock184.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic184.q
  U := readMatrix BoundarySemantic184.q BoundarySemantic184.u
  R := BoundarySemantic184.R
  C := BoundarySemantic184.C
  J := BoundarySemantic184.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic184.A] using BoundarySemantic184.semantic_check
end BoundaryConsumer184

namespace BoundaryConsumer185
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock185.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock185.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic185.q
  U := readMatrix BoundarySemantic185.q BoundarySemantic185.u
  R := BoundarySemantic185.R
  C := BoundarySemantic185.C
  J := BoundarySemantic185.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic185.A] using BoundarySemantic185.semantic_check
end BoundaryConsumer185

namespace BoundaryConsumer186
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock186.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock186.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic186.q
  U := readMatrix BoundarySemantic186.q BoundarySemantic186.u
  R := BoundarySemantic186.R
  C := BoundarySemantic186.C
  J := BoundarySemantic186.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic186.A] using BoundarySemantic186.semantic_check
end BoundaryConsumer186

namespace BoundaryConsumer187
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock187.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock187.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic187.q
  U := readMatrix BoundarySemantic187.q BoundarySemantic187.u
  R := BoundarySemantic187.R
  C := BoundarySemantic187.C
  J := BoundarySemantic187.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic187.A] using BoundarySemantic187.semantic_check
end BoundaryConsumer187

namespace BoundaryConsumer188
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock188.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock188.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic188.q
  U := readMatrix BoundarySemantic188.q BoundarySemantic188.u
  R := BoundarySemantic188.R
  C := BoundarySemantic188.C
  J := BoundarySemantic188.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic188.A] using BoundarySemantic188.semantic_check
end BoundaryConsumer188

namespace BoundaryConsumer189
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock189.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock189.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic189.q
  U := readMatrix BoundarySemantic189.q BoundarySemantic189.u
  R := BoundarySemantic189.R
  C := BoundarySemantic189.C
  J := BoundarySemantic189.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic189.A] using BoundarySemantic189.semantic_check
end BoundaryConsumer189

namespace BoundaryConsumer190
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock190.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock190.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic190.q
  U := readMatrix BoundarySemantic190.q BoundarySemantic190.u
  R := BoundarySemantic190.R
  C := BoundarySemantic190.C
  J := BoundarySemantic190.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic190.A] using BoundarySemantic190.semantic_check
end BoundaryConsumer190

namespace BoundaryConsumer191
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock191.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock191.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic191.q
  U := readMatrix BoundarySemantic191.q BoundarySemantic191.u
  R := BoundarySemantic191.R
  C := BoundarySemantic191.C
  J := BoundarySemantic191.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic191.A] using BoundarySemantic191.semantic_check
end BoundaryConsumer191

namespace BoundaryConsumer192
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock192.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock192.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic192.q
  U := readMatrix BoundarySemantic192.q BoundarySemantic192.u
  R := BoundarySemantic192.R
  C := BoundarySemantic192.C
  J := BoundarySemantic192.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic192.A] using BoundarySemantic192.semantic_check
end BoundaryConsumer192

namespace BoundaryConsumer193
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock193.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock193.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic193.q
  U := readMatrix BoundarySemantic193.q BoundarySemantic193.u
  R := BoundarySemantic193.R
  C := BoundarySemantic193.C
  J := BoundarySemantic193.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic193.A] using BoundarySemantic193.semantic_check
end BoundaryConsumer193

namespace BoundaryConsumer194
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock194.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock194.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic194.q
  U := readMatrix BoundarySemantic194.q BoundarySemantic194.u
  R := BoundarySemantic194.R
  C := BoundarySemantic194.C
  J := BoundarySemantic194.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic194.A] using BoundarySemantic194.semantic_check
end BoundaryConsumer194

namespace BoundaryConsumer195
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock195.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock195.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic195.q
  U := readMatrix BoundarySemantic195.q BoundarySemantic195.u
  R := BoundarySemantic195.R
  C := BoundarySemantic195.C
  J := BoundarySemantic195.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic195.A] using BoundarySemantic195.semantic_check
end BoundaryConsumer195

namespace BoundaryConsumer196
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock196.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock196.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic196.q
  U := readMatrix BoundarySemantic196.q BoundarySemantic196.u
  R := BoundarySemantic196.R
  C := BoundarySemantic196.C
  J := BoundarySemantic196.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic196.A] using BoundarySemantic196.semantic_check
end BoundaryConsumer196

namespace BoundaryConsumer197
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock197.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock197.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic197.q
  U := readMatrix BoundarySemantic197.q BoundarySemantic197.u
  R := BoundarySemantic197.R
  C := BoundarySemantic197.C
  J := BoundarySemantic197.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic197.A] using BoundarySemantic197.semantic_check
end BoundaryConsumer197

namespace BoundaryConsumer198
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock198.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock198.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic198.q
  U := readMatrix BoundarySemantic198.q BoundarySemantic198.u
  R := BoundarySemantic198.R
  C := BoundarySemantic198.C
  J := BoundarySemantic198.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic198.A] using BoundarySemantic198.semantic_check
end BoundaryConsumer198

namespace BoundaryConsumer199
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock199.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock199.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic199.q
  U := readMatrix BoundarySemantic199.q BoundarySemantic199.u
  R := BoundarySemantic199.R
  C := BoundarySemantic199.C
  J := BoundarySemantic199.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic199.A] using BoundarySemantic199.semantic_check
end BoundaryConsumer199

namespace BoundaryConsumer200
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock200.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock200.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic200.q
  U := readMatrix BoundarySemantic200.q BoundarySemantic200.u
  R := BoundarySemantic200.R
  C := BoundarySemantic200.C
  J := BoundarySemantic200.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic200.A] using BoundarySemantic200.semantic_check
end BoundaryConsumer200

namespace BoundaryConsumer201
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock201.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock201.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic201.q
  U := readMatrix BoundarySemantic201.q BoundarySemantic201.u
  R := BoundarySemantic201.R
  C := BoundarySemantic201.C
  J := BoundarySemantic201.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic201.A] using BoundarySemantic201.semantic_check
end BoundaryConsumer201

namespace BoundaryConsumer202
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock202.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock202.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic202.q
  U := readMatrix BoundarySemantic202.q BoundarySemantic202.u
  R := BoundarySemantic202.R
  C := BoundarySemantic202.C
  J := BoundarySemantic202.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic202.A] using BoundarySemantic202.semantic_check
end BoundaryConsumer202

namespace BoundaryConsumer203
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock203.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock203.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic203.q
  U := readMatrix BoundarySemantic203.q BoundarySemantic203.u
  R := BoundarySemantic203.R
  C := BoundarySemantic203.C
  J := BoundarySemantic203.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic203.A] using BoundarySemantic203.semantic_check
end BoundaryConsumer203

namespace BoundaryConsumer204
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock204.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock204.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic204.q
  U := readMatrix BoundarySemantic204.q BoundarySemantic204.u
  R := BoundarySemantic204.R
  C := BoundarySemantic204.C
  J := BoundarySemantic204.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic204.A] using BoundarySemantic204.semantic_check
end BoundaryConsumer204

namespace BoundaryConsumer205
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock205.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock205.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic205.q
  U := readMatrix BoundarySemantic205.q BoundarySemantic205.u
  R := BoundarySemantic205.R
  C := BoundarySemantic205.C
  J := BoundarySemantic205.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic205.A] using BoundarySemantic205.semantic_check
end BoundaryConsumer205

namespace BoundaryConsumer206
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock206.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock206.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic206.q
  U := readMatrix BoundarySemantic206.q BoundarySemantic206.u
  R := BoundarySemantic206.R
  C := BoundarySemantic206.C
  J := BoundarySemantic206.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic206.A] using BoundarySemantic206.semantic_check
end BoundaryConsumer206

namespace BoundaryConsumer207
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock207.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock207.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic207.q
  U := readMatrix BoundarySemantic207.q BoundarySemantic207.u
  R := BoundarySemantic207.R
  C := BoundarySemantic207.C
  J := BoundarySemantic207.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic207.A] using BoundarySemantic207.semantic_check
end BoundaryConsumer207

namespace BoundaryConsumer208
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock208.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock208.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic208.q
  U := readMatrix BoundarySemantic208.q BoundarySemantic208.u
  R := BoundarySemantic208.R
  C := BoundarySemantic208.C
  J := BoundarySemantic208.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic208.A] using BoundarySemantic208.semantic_check
end BoundaryConsumer208

namespace BoundaryConsumer209
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock209.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock209.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic209.q
  U := readMatrix BoundarySemantic209.q BoundarySemantic209.u
  R := BoundarySemantic209.R
  C := BoundarySemantic209.C
  J := BoundarySemantic209.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic209.A] using BoundarySemantic209.semantic_check
end BoundaryConsumer209

namespace BoundaryConsumer210
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock210.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock210.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic210.q
  U := readMatrix BoundarySemantic210.q BoundarySemantic210.u
  R := BoundarySemantic210.R
  C := BoundarySemantic210.C
  J := BoundarySemantic210.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic210.A] using BoundarySemantic210.semantic_check
end BoundaryConsumer210

namespace BoundaryConsumer211
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock211.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock211.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic211.q
  U := readMatrix BoundarySemantic211.q BoundarySemantic211.u
  R := BoundarySemantic211.R
  C := BoundarySemantic211.C
  J := BoundarySemantic211.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic211.A] using BoundarySemantic211.semantic_check
end BoundaryConsumer211

namespace BoundaryConsumer212
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock212.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock212.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic212.q
  U := readMatrix BoundarySemantic212.q BoundarySemantic212.u
  R := BoundarySemantic212.R
  C := BoundarySemantic212.C
  J := BoundarySemantic212.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic212.A] using BoundarySemantic212.semantic_check
end BoundaryConsumer212

namespace BoundaryConsumer213
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock213.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock213.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic213.q
  U := readMatrix BoundarySemantic213.q BoundarySemantic213.u
  R := BoundarySemantic213.R
  C := BoundarySemantic213.C
  J := BoundarySemantic213.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic213.A] using BoundarySemantic213.semantic_check
end BoundaryConsumer213

namespace BoundaryConsumer214
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock214.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock214.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic214.q
  U := readMatrix BoundarySemantic214.q BoundarySemantic214.u
  R := BoundarySemantic214.R
  C := BoundarySemantic214.C
  J := BoundarySemantic214.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic214.A] using BoundarySemantic214.semantic_check
end BoundaryConsumer214

namespace BoundaryConsumer215
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock215.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock215.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic215.q
  U := readMatrix BoundarySemantic215.q BoundarySemantic215.u
  R := BoundarySemantic215.R
  C := BoundarySemantic215.C
  J := BoundarySemantic215.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic215.A] using BoundarySemantic215.semantic_check
end BoundaryConsumer215

namespace BoundaryConsumer216
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock216.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock216.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic216.q
  U := readMatrix BoundarySemantic216.q BoundarySemantic216.u
  R := BoundarySemantic216.R
  C := BoundarySemantic216.C
  J := BoundarySemantic216.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic216.A] using BoundarySemantic216.semantic_check
end BoundaryConsumer216

namespace BoundaryConsumer217
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock217.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock217.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic217.q
  U := readMatrix BoundarySemantic217.q BoundarySemantic217.u
  R := BoundarySemantic217.R
  C := BoundarySemantic217.C
  J := BoundarySemantic217.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic217.A] using BoundarySemantic217.semantic_check
end BoundaryConsumer217

namespace BoundaryConsumer218
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock218.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock218.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic218.q
  U := readMatrix BoundarySemantic218.q BoundarySemantic218.u
  R := BoundarySemantic218.R
  C := BoundarySemantic218.C
  J := BoundarySemantic218.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic218.A] using BoundarySemantic218.semantic_check
end BoundaryConsumer218

namespace BoundaryConsumer219
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock219.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock219.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic219.q
  U := readMatrix BoundarySemantic219.q BoundarySemantic219.u
  R := BoundarySemantic219.R
  C := BoundarySemantic219.C
  J := BoundarySemantic219.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic219.A] using BoundarySemantic219.semantic_check
end BoundaryConsumer219

namespace BoundaryConsumer220
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock220.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock220.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic220.q
  U := readMatrix BoundarySemantic220.q BoundarySemantic220.u
  R := BoundarySemantic220.R
  C := BoundarySemantic220.C
  J := BoundarySemantic220.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic220.A] using BoundarySemantic220.semantic_check
end BoundaryConsumer220

namespace BoundaryConsumer221
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock221.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock221.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic221.q
  U := readMatrix BoundarySemantic221.q BoundarySemantic221.u
  R := BoundarySemantic221.R
  C := BoundarySemantic221.C
  J := BoundarySemantic221.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic221.A] using BoundarySemantic221.semantic_check
end BoundaryConsumer221

namespace BoundaryConsumer222
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock222.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock222.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic222.q
  U := readMatrix BoundarySemantic222.q BoundarySemantic222.u
  R := BoundarySemantic222.R
  C := BoundarySemantic222.C
  J := BoundarySemantic222.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic222.A] using BoundarySemantic222.semantic_check
end BoundaryConsumer222

namespace BoundaryConsumer223
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock223.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock223.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic223.q
  U := readMatrix BoundarySemantic223.q BoundarySemantic223.u
  R := BoundarySemantic223.R
  C := BoundarySemantic223.C
  J := BoundarySemantic223.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic223.A] using BoundarySemantic223.semantic_check
end BoundaryConsumer223

namespace BoundaryConsumer224
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock224.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock224.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic224.q
  U := readMatrix BoundarySemantic224.q BoundarySemantic224.u
  R := BoundarySemantic224.R
  C := BoundarySemantic224.C
  J := BoundarySemantic224.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic224.A] using BoundarySemantic224.semantic_check
end BoundaryConsumer224

namespace BoundaryConsumer225
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock225.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock225.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic225.q
  U := readMatrix BoundarySemantic225.q BoundarySemantic225.u
  R := BoundarySemantic225.R
  C := BoundarySemantic225.C
  J := BoundarySemantic225.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic225.A] using BoundarySemantic225.semantic_check
end BoundaryConsumer225

namespace BoundaryConsumer226
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock226.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock226.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic226.q
  U := readMatrix BoundarySemantic226.q BoundarySemantic226.u
  R := BoundarySemantic226.R
  C := BoundarySemantic226.C
  J := BoundarySemantic226.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic226.A] using BoundarySemantic226.semantic_check
end BoundaryConsumer226

namespace BoundaryConsumer227
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock227.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock227.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic227.q
  U := readMatrix BoundarySemantic227.q BoundarySemantic227.u
  R := BoundarySemantic227.R
  C := BoundarySemantic227.C
  J := BoundarySemantic227.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic227.A] using BoundarySemantic227.semantic_check
end BoundaryConsumer227

namespace BoundaryConsumer228
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock228.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock228.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic228.q
  U := readMatrix BoundarySemantic228.q BoundarySemantic228.u
  R := BoundarySemantic228.R
  C := BoundarySemantic228.C
  J := BoundarySemantic228.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic228.A] using BoundarySemantic228.semantic_check
end BoundaryConsumer228

namespace BoundaryConsumer229
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock229.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock229.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic229.q
  U := readMatrix BoundarySemantic229.q BoundarySemantic229.u
  R := BoundarySemantic229.R
  C := BoundarySemantic229.C
  J := BoundarySemantic229.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic229.A] using BoundarySemantic229.semantic_check
end BoundaryConsumer229

namespace BoundaryConsumer230
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock230.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock230.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic230.q
  U := readMatrix BoundarySemantic230.q BoundarySemantic230.u
  R := BoundarySemantic230.R
  C := BoundarySemantic230.C
  J := BoundarySemantic230.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic230.A] using BoundarySemantic230.semantic_check
end BoundaryConsumer230

namespace BoundaryConsumer231
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock231.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock231.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic231.q
  U := readMatrix BoundarySemantic231.q BoundarySemantic231.u
  R := BoundarySemantic231.R
  C := BoundarySemantic231.C
  J := BoundarySemantic231.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic231.A] using BoundarySemantic231.semantic_check
end BoundaryConsumer231

namespace BoundaryConsumer232
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock232.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock232.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic232.q
  U := readMatrix BoundarySemantic232.q BoundarySemantic232.u
  R := BoundarySemantic232.R
  C := BoundarySemantic232.C
  J := BoundarySemantic232.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic232.A] using BoundarySemantic232.semantic_check
end BoundaryConsumer232

namespace BoundaryConsumer233
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock233.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock233.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic233.q
  U := readMatrix BoundarySemantic233.q BoundarySemantic233.u
  R := BoundarySemantic233.R
  C := BoundarySemantic233.C
  J := BoundarySemantic233.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic233.A] using BoundarySemantic233.semantic_check
end BoundaryConsumer233

namespace BoundaryConsumer234
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock234.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock234.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic234.q
  U := readMatrix BoundarySemantic234.q BoundarySemantic234.u
  R := BoundarySemantic234.R
  C := BoundarySemantic234.C
  J := BoundarySemantic234.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic234.A] using BoundarySemantic234.semantic_check
end BoundaryConsumer234

namespace BoundaryConsumer235
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock235.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock235.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic235.q
  U := readMatrix BoundarySemantic235.q BoundarySemantic235.u
  R := BoundarySemantic235.R
  C := BoundarySemantic235.C
  J := BoundarySemantic235.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic235.A] using BoundarySemantic235.semantic_check
end BoundaryConsumer235

namespace BoundaryConsumer236
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock236.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock236.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic236.q
  U := readMatrix BoundarySemantic236.q BoundarySemantic236.u
  R := BoundarySemantic236.R
  C := BoundarySemantic236.C
  J := BoundarySemantic236.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic236.A] using BoundarySemantic236.semantic_check
end BoundaryConsumer236

namespace BoundaryConsumer237
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock237.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock237.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic237.q
  U := readMatrix BoundarySemantic237.q BoundarySemantic237.u
  R := BoundarySemantic237.R
  C := BoundarySemantic237.C
  J := BoundarySemantic237.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic237.A] using BoundarySemantic237.semantic_check
end BoundaryConsumer237

namespace BoundaryConsumer238
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock238.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock238.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic238.q
  U := readMatrix BoundarySemantic238.q BoundarySemantic238.u
  R := BoundarySemantic238.R
  C := BoundarySemantic238.C
  J := BoundarySemantic238.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic238.A] using BoundarySemantic238.semantic_check
end BoundaryConsumer238

namespace BoundaryConsumer239
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock239.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock239.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic239.q
  U := readMatrix BoundarySemantic239.q BoundarySemantic239.u
  R := BoundarySemantic239.R
  C := BoundarySemantic239.C
  J := BoundarySemantic239.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic239.A] using BoundarySemantic239.semantic_check
end BoundaryConsumer239

namespace BoundaryConsumer240
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock240.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock240.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic240.q
  U := readMatrix BoundarySemantic240.q BoundarySemantic240.u
  R := BoundarySemantic240.R
  C := BoundarySemantic240.C
  J := BoundarySemantic240.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic240.A] using BoundarySemantic240.semantic_check
end BoundaryConsumer240

namespace BoundaryConsumer241
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock241.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock241.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic241.q
  U := readMatrix BoundarySemantic241.q BoundarySemantic241.u
  R := BoundarySemantic241.R
  C := BoundarySemantic241.C
  J := BoundarySemantic241.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic241.A] using BoundarySemantic241.semantic_check
end BoundaryConsumer241

namespace BoundaryConsumer242
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock242.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock242.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic242.q
  U := readMatrix BoundarySemantic242.q BoundarySemantic242.u
  R := BoundarySemantic242.R
  C := BoundarySemantic242.C
  J := BoundarySemantic242.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic242.A] using BoundarySemantic242.semantic_check
end BoundaryConsumer242

namespace BoundaryConsumer243
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock243.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock243.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic243.q
  U := readMatrix BoundarySemantic243.q BoundarySemantic243.u
  R := BoundarySemantic243.R
  C := BoundarySemantic243.C
  J := BoundarySemantic243.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic243.A] using BoundarySemantic243.semantic_check
end BoundaryConsumer243

namespace BoundaryConsumer244
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock244.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock244.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic244.q
  U := readMatrix BoundarySemantic244.q BoundarySemantic244.u
  R := BoundarySemantic244.R
  C := BoundarySemantic244.C
  J := BoundarySemantic244.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic244.A] using BoundarySemantic244.semantic_check
end BoundaryConsumer244

namespace BoundaryConsumer245
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock245.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock245.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic245.q
  U := readMatrix BoundarySemantic245.q BoundarySemantic245.u
  R := BoundarySemantic245.R
  C := BoundarySemantic245.C
  J := BoundarySemantic245.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic245.A] using BoundarySemantic245.semantic_check
end BoundaryConsumer245

namespace BoundaryConsumer246
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock246.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock246.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic246.q
  U := readMatrix BoundarySemantic246.q BoundarySemantic246.u
  R := BoundarySemantic246.R
  C := BoundarySemantic246.C
  J := BoundarySemantic246.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic246.A] using BoundarySemantic246.semantic_check
end BoundaryConsumer246

namespace BoundaryConsumer247
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock247.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock247.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic247.q
  U := readMatrix BoundarySemantic247.q BoundarySemantic247.u
  R := BoundarySemantic247.R
  C := BoundarySemantic247.C
  J := BoundarySemantic247.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic247.A] using BoundarySemantic247.semantic_check
end BoundaryConsumer247

namespace BoundaryConsumer248
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock248.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock248.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic248.q
  U := readMatrix BoundarySemantic248.q BoundarySemantic248.u
  R := BoundarySemantic248.R
  C := BoundarySemantic248.C
  J := BoundarySemantic248.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic248.A] using BoundarySemantic248.semantic_check
end BoundaryConsumer248

namespace BoundaryConsumer249
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock249.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock249.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic249.q
  U := readMatrix BoundarySemantic249.q BoundarySemantic249.u
  R := BoundarySemantic249.R
  C := BoundarySemantic249.C
  J := BoundarySemantic249.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic249.A] using BoundarySemantic249.semantic_check
end BoundaryConsumer249

namespace BoundaryConsumer250
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock250.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock250.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic250.q
  U := readMatrix BoundarySemantic250.q BoundarySemantic250.u
  R := BoundarySemantic250.R
  C := BoundarySemantic250.C
  J := BoundarySemantic250.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic250.A] using BoundarySemantic250.semantic_check
end BoundaryConsumer250

namespace BoundaryConsumer251
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock251.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock251.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic251.q
  U := readMatrix BoundarySemantic251.q BoundarySemantic251.u
  R := BoundarySemantic251.R
  C := BoundarySemantic251.C
  J := BoundarySemantic251.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic251.A] using BoundarySemantic251.semantic_check
end BoundaryConsumer251

namespace BoundaryConsumer252
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock252.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock252.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic252.q
  U := readMatrix BoundarySemantic252.q BoundarySemantic252.u
  R := BoundarySemantic252.R
  C := BoundarySemantic252.C
  J := BoundarySemantic252.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic252.A] using BoundarySemantic252.semantic_check
end BoundaryConsumer252

namespace BoundaryConsumer253
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock253.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock253.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic253.q
  U := readMatrix BoundarySemantic253.q BoundarySemantic253.u
  R := BoundarySemantic253.R
  C := BoundarySemantic253.C
  J := BoundarySemantic253.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic253.A] using BoundarySemantic253.semantic_check
end BoundaryConsumer253

namespace BoundaryConsumer254
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock254.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock254.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic254.q
  U := readMatrix BoundarySemantic254.q BoundarySemantic254.u
  R := BoundarySemantic254.R
  C := BoundarySemantic254.C
  J := BoundarySemantic254.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic254.A] using BoundarySemantic254.semantic_check
end BoundaryConsumer254

namespace BoundaryConsumer255
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock255.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock255.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic255.q
  U := readMatrix BoundarySemantic255.q BoundarySemantic255.u
  R := BoundarySemantic255.R
  C := BoundarySemantic255.C
  J := BoundarySemantic255.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic255.A] using BoundarySemantic255.semantic_check
end BoundaryConsumer255

namespace BoundaryConsumer256
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock256.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock256.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic256.q
  U := readMatrix BoundarySemantic256.q BoundarySemantic256.u
  R := BoundarySemantic256.R
  C := BoundarySemantic256.C
  J := BoundarySemantic256.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic256.A] using BoundarySemantic256.semantic_check
end BoundaryConsumer256

namespace BoundaryConsumer257
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock257.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock257.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic257.q
  U := readMatrix BoundarySemantic257.q BoundarySemantic257.u
  R := BoundarySemantic257.R
  C := BoundarySemantic257.C
  J := BoundarySemantic257.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic257.A] using BoundarySemantic257.semantic_check
end BoundaryConsumer257

namespace BoundaryConsumer258
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock258.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock258.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic258.q
  U := readMatrix BoundarySemantic258.q BoundarySemantic258.u
  R := BoundarySemantic258.R
  C := BoundarySemantic258.C
  J := BoundarySemantic258.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic258.A] using BoundarySemantic258.semantic_check
end BoundaryConsumer258

namespace BoundaryConsumer259
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock259.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock259.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic259.q
  U := readMatrix BoundarySemantic259.q BoundarySemantic259.u
  R := BoundarySemantic259.R
  C := BoundarySemantic259.C
  J := BoundarySemantic259.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic259.A] using BoundarySemantic259.semantic_check
end BoundaryConsumer259

namespace BoundaryConsumer260
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock260.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock260.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic260.q
  U := readMatrix BoundarySemantic260.q BoundarySemantic260.u
  R := BoundarySemantic260.R
  C := BoundarySemantic260.C
  J := BoundarySemantic260.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic260.A] using BoundarySemantic260.semantic_check
end BoundaryConsumer260

namespace BoundaryConsumer261
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock261.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock261.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic261.q
  U := readMatrix BoundarySemantic261.q BoundarySemantic261.u
  R := BoundarySemantic261.R
  C := BoundarySemantic261.C
  J := BoundarySemantic261.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic261.A] using BoundarySemantic261.semantic_check
end BoundaryConsumer261

namespace BoundaryConsumer262
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock262.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock262.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic262.q
  U := readMatrix BoundarySemantic262.q BoundarySemantic262.u
  R := BoundarySemantic262.R
  C := BoundarySemantic262.C
  J := BoundarySemantic262.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic262.A] using BoundarySemantic262.semantic_check
end BoundaryConsumer262

namespace BoundaryConsumer263
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock263.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock263.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic263.q
  U := readMatrix BoundarySemantic263.q BoundarySemantic263.u
  R := BoundarySemantic263.R
  C := BoundarySemantic263.C
  J := BoundarySemantic263.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic263.A] using BoundarySemantic263.semantic_check
end BoundaryConsumer263

namespace BoundaryConsumer264
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock264.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock264.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic264.q
  U := readMatrix BoundarySemantic264.q BoundarySemantic264.u
  R := BoundarySemantic264.R
  C := BoundarySemantic264.C
  J := BoundarySemantic264.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic264.A] using BoundarySemantic264.semantic_check
end BoundaryConsumer264

namespace BoundaryConsumer265
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock265.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock265.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic265.q
  U := readMatrix BoundarySemantic265.q BoundarySemantic265.u
  R := BoundarySemantic265.R
  C := BoundarySemantic265.C
  J := BoundarySemantic265.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic265.A] using BoundarySemantic265.semantic_check
end BoundaryConsumer265

namespace BoundaryConsumer266
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock266.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock266.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic266.q
  U := readMatrix BoundarySemantic266.q BoundarySemantic266.u
  R := BoundarySemantic266.R
  C := BoundarySemantic266.C
  J := BoundarySemantic266.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic266.A] using BoundarySemantic266.semantic_check
end BoundaryConsumer266

namespace BoundaryConsumer267
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock267.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock267.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic267.q
  U := readMatrix BoundarySemantic267.q BoundarySemantic267.u
  R := BoundarySemantic267.R
  C := BoundarySemantic267.C
  J := BoundarySemantic267.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic267.A] using BoundarySemantic267.semantic_check
end BoundaryConsumer267

namespace BoundaryConsumer268
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock268.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock268.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic268.q
  U := readMatrix BoundarySemantic268.q BoundarySemantic268.u
  R := BoundarySemantic268.R
  C := BoundarySemantic268.C
  J := BoundarySemantic268.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic268.A] using BoundarySemantic268.semantic_check
end BoundaryConsumer268

namespace BoundaryConsumer269
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock269.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock269.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic269.q
  U := readMatrix BoundarySemantic269.q BoundarySemantic269.u
  R := BoundarySemantic269.R
  C := BoundarySemantic269.C
  J := BoundarySemantic269.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic269.A] using BoundarySemantic269.semantic_check
end BoundaryConsumer269

namespace BoundaryConsumer270
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock270.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock270.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic270.q
  U := readMatrix BoundarySemantic270.q BoundarySemantic270.u
  R := BoundarySemantic270.R
  C := BoundarySemantic270.C
  J := BoundarySemantic270.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic270.A] using BoundarySemantic270.semantic_check
end BoundaryConsumer270

namespace BoundaryConsumer271
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock271.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock271.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic271.q
  U := readMatrix BoundarySemantic271.q BoundarySemantic271.u
  R := BoundarySemantic271.R
  C := BoundarySemantic271.C
  J := BoundarySemantic271.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic271.A] using BoundarySemantic271.semantic_check
end BoundaryConsumer271

namespace BoundaryConsumer272
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock272.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock272.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic272.q
  U := readMatrix BoundarySemantic272.q BoundarySemantic272.u
  R := BoundarySemantic272.R
  C := BoundarySemantic272.C
  J := BoundarySemantic272.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic272.A] using BoundarySemantic272.semantic_check
end BoundaryConsumer272

namespace BoundaryConsumer273
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock273.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock273.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic273.q
  U := readMatrix BoundarySemantic273.q BoundarySemantic273.u
  R := BoundarySemantic273.R
  C := BoundarySemantic273.C
  J := BoundarySemantic273.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic273.A] using BoundarySemantic273.semantic_check
end BoundaryConsumer273

namespace BoundaryConsumer274
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock274.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock274.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic274.q
  U := readMatrix BoundarySemantic274.q BoundarySemantic274.u
  R := BoundarySemantic274.R
  C := BoundarySemantic274.C
  J := BoundarySemantic274.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic274.A] using BoundarySemantic274.semantic_check
end BoundaryConsumer274

namespace BoundaryConsumer275
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock275.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock275.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic275.q
  U := readMatrix BoundarySemantic275.q BoundarySemantic275.u
  R := BoundarySemantic275.R
  C := BoundarySemantic275.C
  J := BoundarySemantic275.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic275.A] using BoundarySemantic275.semantic_check
end BoundaryConsumer275

namespace BoundaryConsumer276
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock276.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock276.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic276.q
  U := readMatrix BoundarySemantic276.q BoundarySemantic276.u
  R := BoundarySemantic276.R
  C := BoundarySemantic276.C
  J := BoundarySemantic276.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic276.A] using BoundarySemantic276.semantic_check
end BoundaryConsumer276

namespace BoundaryConsumer277
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock277.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock277.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic277.q
  U := readMatrix BoundarySemantic277.q BoundarySemantic277.u
  R := BoundarySemantic277.R
  C := BoundarySemantic277.C
  J := BoundarySemantic277.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic277.A] using BoundarySemantic277.semantic_check
end BoundaryConsumer277

namespace BoundaryConsumer278
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock278.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock278.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic278.q
  U := readMatrix BoundarySemantic278.q BoundarySemantic278.u
  R := BoundarySemantic278.R
  C := BoundarySemantic278.C
  J := BoundarySemantic278.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic278.A] using BoundarySemantic278.semantic_check
end BoundaryConsumer278

namespace BoundaryConsumer279
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock279.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock279.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic279.q
  U := readMatrix BoundarySemantic279.q BoundarySemantic279.u
  R := BoundarySemantic279.R
  C := BoundarySemantic279.C
  J := BoundarySemantic279.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic279.A] using BoundarySemantic279.semantic_check
end BoundaryConsumer279

namespace BoundaryConsumer280
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock280.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock280.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic280.q
  U := readMatrix BoundarySemantic280.q BoundarySemantic280.u
  R := BoundarySemantic280.R
  C := BoundarySemantic280.C
  J := BoundarySemantic280.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic280.A] using BoundarySemantic280.semantic_check
end BoundaryConsumer280

namespace BoundaryConsumer281
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock281.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock281.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic281.q
  U := readMatrix BoundarySemantic281.q BoundarySemantic281.u
  R := BoundarySemantic281.R
  C := BoundarySemantic281.C
  J := BoundarySemantic281.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic281.A] using BoundarySemantic281.semantic_check
end BoundaryConsumer281

namespace BoundaryConsumer282
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock282.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock282.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic282.q
  U := readMatrix BoundarySemantic282.q BoundarySemantic282.u
  R := BoundarySemantic282.R
  C := BoundarySemantic282.C
  J := BoundarySemantic282.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic282.A] using BoundarySemantic282.semantic_check
end BoundaryConsumer282

namespace BoundaryConsumer283
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock283.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock283.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic283.q
  U := readMatrix BoundarySemantic283.q BoundarySemantic283.u
  R := BoundarySemantic283.R
  C := BoundarySemantic283.C
  J := BoundarySemantic283.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic283.A] using BoundarySemantic283.semantic_check
end BoundaryConsumer283

namespace BoundaryConsumer284
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock284.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock284.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic284.q
  U := readMatrix BoundarySemantic284.q BoundarySemantic284.u
  R := BoundarySemantic284.R
  C := BoundarySemantic284.C
  J := BoundarySemantic284.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic284.A] using BoundarySemantic284.semantic_check
end BoundaryConsumer284

namespace BoundaryConsumer285
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock285.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock285.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic285.q
  U := readMatrix BoundarySemantic285.q BoundarySemantic285.u
  R := BoundarySemantic285.R
  C := BoundarySemantic285.C
  J := BoundarySemantic285.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic285.A] using BoundarySemantic285.semantic_check
end BoundaryConsumer285

namespace BoundaryConsumer286
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock286.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock286.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic286.q
  U := readMatrix BoundarySemantic286.q BoundarySemantic286.u
  R := BoundarySemantic286.R
  C := BoundarySemantic286.C
  J := BoundarySemantic286.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic286.A] using BoundarySemantic286.semantic_check
end BoundaryConsumer286

namespace BoundaryConsumer287
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock287.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock287.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic287.q
  U := readMatrix BoundarySemantic287.q BoundarySemantic287.u
  R := BoundarySemantic287.R
  C := BoundarySemantic287.C
  J := BoundarySemantic287.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic287.A] using BoundarySemantic287.semantic_check
end BoundaryConsumer287

namespace BoundaryConsumer288
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock288.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock288.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic288.q
  U := readMatrix BoundarySemantic288.q BoundarySemantic288.u
  R := BoundarySemantic288.R
  C := BoundarySemantic288.C
  J := BoundarySemantic288.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic288.A] using BoundarySemantic288.semantic_check
end BoundaryConsumer288

namespace BoundaryConsumer289
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock289.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock289.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic289.q
  U := readMatrix BoundarySemantic289.q BoundarySemantic289.u
  R := BoundarySemantic289.R
  C := BoundarySemantic289.C
  J := BoundarySemantic289.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic289.A] using BoundarySemantic289.semantic_check
end BoundaryConsumer289

namespace BoundaryConsumer290
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock290.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock290.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic290.q
  U := readMatrix BoundarySemantic290.q BoundarySemantic290.u
  R := BoundarySemantic290.R
  C := BoundarySemantic290.C
  J := BoundarySemantic290.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic290.A] using BoundarySemantic290.semantic_check
end BoundaryConsumer290

namespace BoundaryConsumer291
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock291.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock291.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic291.q
  U := readMatrix BoundarySemantic291.q BoundarySemantic291.u
  R := BoundarySemantic291.R
  C := BoundarySemantic291.C
  J := BoundarySemantic291.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic291.A] using BoundarySemantic291.semantic_check
end BoundaryConsumer291

namespace BoundaryConsumer292
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock292.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock292.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic292.q
  U := readMatrix BoundarySemantic292.q BoundarySemantic292.u
  R := BoundarySemantic292.R
  C := BoundarySemantic292.C
  J := BoundarySemantic292.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic292.A] using BoundarySemantic292.semantic_check
end BoundaryConsumer292

namespace BoundaryConsumer293
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock293.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock293.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic293.q
  U := readMatrix BoundarySemantic293.q BoundarySemantic293.u
  R := BoundarySemantic293.R
  C := BoundarySemantic293.C
  J := BoundarySemantic293.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic293.A] using BoundarySemantic293.semantic_check
end BoundaryConsumer293

namespace BoundaryConsumer294
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock294.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock294.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic294.q
  U := readMatrix BoundarySemantic294.q BoundarySemantic294.u
  R := BoundarySemantic294.R
  C := BoundarySemantic294.C
  J := BoundarySemantic294.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic294.A] using BoundarySemantic294.semantic_check
end BoundaryConsumer294

namespace BoundaryConsumer295
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock295.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock295.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic295.q
  U := readMatrix BoundarySemantic295.q BoundarySemantic295.u
  R := BoundarySemantic295.R
  C := BoundarySemantic295.C
  J := BoundarySemantic295.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic295.A] using BoundarySemantic295.semantic_check
end BoundaryConsumer295

namespace BoundaryConsumer296
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock296.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock296.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic296.q
  U := readMatrix BoundarySemantic296.q BoundarySemantic296.u
  R := BoundarySemantic296.R
  C := BoundarySemantic296.C
  J := BoundarySemantic296.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic296.A] using BoundarySemantic296.semantic_check
end BoundaryConsumer296

namespace BoundaryConsumer297
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock297.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock297.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic297.q
  U := readMatrix BoundarySemantic297.q BoundarySemantic297.u
  R := BoundarySemantic297.R
  C := BoundarySemantic297.C
  J := BoundarySemantic297.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic297.A] using BoundarySemantic297.semantic_check
end BoundaryConsumer297

namespace BoundaryConsumer298
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock298.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock298.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic298.q
  U := readMatrix BoundarySemantic298.q BoundarySemantic298.u
  R := BoundarySemantic298.R
  C := BoundarySemantic298.C
  J := BoundarySemantic298.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic298.A] using BoundarySemantic298.semantic_check
end BoundaryConsumer298

namespace BoundaryConsumer299
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock299.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock299.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic299.q
  U := readMatrix BoundarySemantic299.q BoundarySemantic299.u
  R := BoundarySemantic299.R
  C := BoundarySemantic299.C
  J := BoundarySemantic299.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic299.A] using BoundarySemantic299.semantic_check
end BoundaryConsumer299

namespace BoundaryConsumer300
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock300.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock300.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic300.q
  U := readMatrix BoundarySemantic300.q BoundarySemantic300.u
  R := BoundarySemantic300.R
  C := BoundarySemantic300.C
  J := BoundarySemantic300.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic300.A] using BoundarySemantic300.semantic_check
end BoundaryConsumer300

namespace BoundaryConsumer301
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock301.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock301.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic301.q
  U := readMatrix BoundarySemantic301.q BoundarySemantic301.u
  R := BoundarySemantic301.R
  C := BoundarySemantic301.C
  J := BoundarySemantic301.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic301.A] using BoundarySemantic301.semantic_check
end BoundaryConsumer301

namespace BoundaryConsumer302
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock302.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock302.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic302.q
  U := readMatrix BoundarySemantic302.q BoundarySemantic302.u
  R := BoundarySemantic302.R
  C := BoundarySemantic302.C
  J := BoundarySemantic302.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic302.A] using BoundarySemantic302.semantic_check
end BoundaryConsumer302

namespace BoundaryConsumer303
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock303.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock303.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic303.q
  U := readMatrix BoundarySemantic303.q BoundarySemantic303.u
  R := BoundarySemantic303.R
  C := BoundarySemantic303.C
  J := BoundarySemantic303.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic303.A] using BoundarySemantic303.semantic_check
end BoundaryConsumer303

namespace BoundaryConsumer304
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock304.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock304.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic304.q
  U := readMatrix BoundarySemantic304.q BoundarySemantic304.u
  R := BoundarySemantic304.R
  C := BoundarySemantic304.C
  J := BoundarySemantic304.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic304.A] using BoundarySemantic304.semantic_check
end BoundaryConsumer304

namespace BoundaryConsumer305
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock305.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock305.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic305.q
  U := readMatrix BoundarySemantic305.q BoundarySemantic305.u
  R := BoundarySemantic305.R
  C := BoundarySemantic305.C
  J := BoundarySemantic305.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic305.A] using BoundarySemantic305.semantic_check
end BoundaryConsumer305

namespace BoundaryConsumer306
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock306.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock306.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic306.q
  U := readMatrix BoundarySemantic306.q BoundarySemantic306.u
  R := BoundarySemantic306.R
  C := BoundarySemantic306.C
  J := BoundarySemantic306.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic306.A] using BoundarySemantic306.semantic_check
end BoundaryConsumer306

namespace BoundaryConsumer307
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock307.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock307.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic307.q
  U := readMatrix BoundarySemantic307.q BoundarySemantic307.u
  R := BoundarySemantic307.R
  C := BoundarySemantic307.C
  J := BoundarySemantic307.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic307.A] using BoundarySemantic307.semantic_check
end BoundaryConsumer307

namespace BoundaryConsumer308
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock308.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock308.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic308.q
  U := readMatrix BoundarySemantic308.q BoundarySemantic308.u
  R := BoundarySemantic308.R
  C := BoundarySemantic308.C
  J := BoundarySemantic308.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic308.A] using BoundarySemantic308.semantic_check
end BoundaryConsumer308

namespace BoundaryConsumer309
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock309.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock309.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic309.q
  U := readMatrix BoundarySemantic309.q BoundarySemantic309.u
  R := BoundarySemantic309.R
  C := BoundarySemantic309.C
  J := BoundarySemantic309.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic309.A] using BoundarySemantic309.semantic_check
end BoundaryConsumer309

namespace BoundaryConsumer310
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock310.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock310.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic310.q
  U := readMatrix BoundarySemantic310.q BoundarySemantic310.u
  R := BoundarySemantic310.R
  C := BoundarySemantic310.C
  J := BoundarySemantic310.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic310.A] using BoundarySemantic310.semantic_check
end BoundaryConsumer310

namespace BoundaryConsumer311
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock311.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock311.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic311.q
  U := readMatrix BoundarySemantic311.q BoundarySemantic311.u
  R := BoundarySemantic311.R
  C := BoundarySemantic311.C
  J := BoundarySemantic311.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic311.A] using BoundarySemantic311.semantic_check
end BoundaryConsumer311

namespace BoundaryConsumer312
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock312.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock312.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic312.q
  U := readMatrix BoundarySemantic312.q BoundarySemantic312.u
  R := BoundarySemantic312.R
  C := BoundarySemantic312.C
  J := BoundarySemantic312.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic312.A] using BoundarySemantic312.semantic_check
end BoundaryConsumer312

namespace BoundaryConsumer313
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock313.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock313.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic313.q
  U := readMatrix BoundarySemantic313.q BoundarySemantic313.u
  R := BoundarySemantic313.R
  C := BoundarySemantic313.C
  J := BoundarySemantic313.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic313.A] using BoundarySemantic313.semantic_check
end BoundaryConsumer313

namespace BoundaryConsumer314
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock314.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock314.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic314.q
  U := readMatrix BoundarySemantic314.q BoundarySemantic314.u
  R := BoundarySemantic314.R
  C := BoundarySemantic314.C
  J := BoundarySemantic314.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic314.A] using BoundarySemantic314.semantic_check
end BoundaryConsumer314

namespace BoundaryConsumer315
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock315.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock315.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic315.q
  U := readMatrix BoundarySemantic315.q BoundarySemantic315.u
  R := BoundarySemantic315.R
  C := BoundarySemantic315.C
  J := BoundarySemantic315.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic315.A] using BoundarySemantic315.semantic_check
end BoundaryConsumer315

namespace BoundaryConsumer316
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock316.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock316.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic316.q
  U := readMatrix BoundarySemantic316.q BoundarySemantic316.u
  R := BoundarySemantic316.R
  C := BoundarySemantic316.C
  J := BoundarySemantic316.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic316.A] using BoundarySemantic316.semantic_check
end BoundaryConsumer316

namespace BoundaryConsumer317
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock317.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock317.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic317.q
  U := readMatrix BoundarySemantic317.q BoundarySemantic317.u
  R := BoundarySemantic317.R
  C := BoundarySemantic317.C
  J := BoundarySemantic317.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic317.A] using BoundarySemantic317.semantic_check
end BoundaryConsumer317

namespace BoundaryConsumer318
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock318.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock318.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic318.q
  U := readMatrix BoundarySemantic318.q BoundarySemantic318.u
  R := BoundarySemantic318.R
  C := BoundarySemantic318.C
  J := BoundarySemantic318.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic318.A] using BoundarySemantic318.semantic_check
end BoundaryConsumer318

namespace BoundaryConsumer319
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock319.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock319.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic319.q
  U := readMatrix BoundarySemantic319.q BoundarySemantic319.u
  R := BoundarySemantic319.R
  C := BoundarySemantic319.C
  J := BoundarySemantic319.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic319.A] using BoundarySemantic319.semantic_check
end BoundaryConsumer319

namespace BoundaryConsumer320
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock320.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock320.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic320.q
  U := readMatrix BoundarySemantic320.q BoundarySemantic320.u
  R := BoundarySemantic320.R
  C := BoundarySemantic320.C
  J := BoundarySemantic320.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic320.A] using BoundarySemantic320.semantic_check
end BoundaryConsumer320

namespace BoundaryConsumer321
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock321.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock321.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic321.q
  U := readMatrix BoundarySemantic321.q BoundarySemantic321.u
  R := BoundarySemantic321.R
  C := BoundarySemantic321.C
  J := BoundarySemantic321.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic321.A] using BoundarySemantic321.semantic_check
end BoundaryConsumer321

namespace BoundaryConsumer322
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock322.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock322.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic322.q
  U := readMatrix BoundarySemantic322.q BoundarySemantic322.u
  R := BoundarySemantic322.R
  C := BoundarySemantic322.C
  J := BoundarySemantic322.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic322.A] using BoundarySemantic322.semantic_check
end BoundaryConsumer322

namespace BoundaryConsumer323
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock323.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock323.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic323.q
  U := readMatrix BoundarySemantic323.q BoundarySemantic323.u
  R := BoundarySemantic323.R
  C := BoundarySemantic323.C
  J := BoundarySemantic323.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic323.A] using BoundarySemantic323.semantic_check
end BoundaryConsumer323

namespace BoundaryConsumer324
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock324.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock324.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic324.q
  U := readMatrix BoundarySemantic324.q BoundarySemantic324.u
  R := BoundarySemantic324.R
  C := BoundarySemantic324.C
  J := BoundarySemantic324.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic324.A] using BoundarySemantic324.semantic_check
end BoundaryConsumer324

namespace BoundaryConsumer325
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock325.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock325.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic325.q
  U := readMatrix BoundarySemantic325.q BoundarySemantic325.u
  R := BoundarySemantic325.R
  C := BoundarySemantic325.C
  J := BoundarySemantic325.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic325.A] using BoundarySemantic325.semantic_check
end BoundaryConsumer325

namespace BoundaryConsumer326
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock326.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock326.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic326.q
  U := readMatrix BoundarySemantic326.q BoundarySemantic326.u
  R := BoundarySemantic326.R
  C := BoundarySemantic326.C
  J := BoundarySemantic326.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic326.A] using BoundarySemantic326.semantic_check
end BoundaryConsumer326

namespace BoundaryConsumer327
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock327.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock327.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic327.q
  U := readMatrix BoundarySemantic327.q BoundarySemantic327.u
  R := BoundarySemantic327.R
  C := BoundarySemantic327.C
  J := BoundarySemantic327.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic327.A] using BoundarySemantic327.semantic_check
end BoundaryConsumer327

namespace BoundaryConsumer328
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock328.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock328.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic328.q
  U := readMatrix BoundarySemantic328.q BoundarySemantic328.u
  R := BoundarySemantic328.R
  C := BoundarySemantic328.C
  J := BoundarySemantic328.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic328.A] using BoundarySemantic328.semantic_check
end BoundaryConsumer328

namespace BoundaryConsumer329
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock329.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock329.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic329.q
  U := readMatrix BoundarySemantic329.q BoundarySemantic329.u
  R := BoundarySemantic329.R
  C := BoundarySemantic329.C
  J := BoundarySemantic329.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic329.A] using BoundarySemantic329.semantic_check
end BoundaryConsumer329

namespace BoundaryConsumer330
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock330.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock330.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic330.q
  U := readMatrix BoundarySemantic330.q BoundarySemantic330.u
  R := BoundarySemantic330.R
  C := BoundarySemantic330.C
  J := BoundarySemantic330.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic330.A] using BoundarySemantic330.semantic_check
end BoundaryConsumer330

namespace BoundaryConsumer331
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock331.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock331.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic331.q
  U := readMatrix BoundarySemantic331.q BoundarySemantic331.u
  R := BoundarySemantic331.R
  C := BoundarySemantic331.C
  J := BoundarySemantic331.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic331.A] using BoundarySemantic331.semantic_check
end BoundaryConsumer331

namespace BoundaryConsumer332
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock332.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock332.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic332.q
  U := readMatrix BoundarySemantic332.q BoundarySemantic332.u
  R := BoundarySemantic332.R
  C := BoundarySemantic332.C
  J := BoundarySemantic332.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic332.A] using BoundarySemantic332.semantic_check
end BoundaryConsumer332

namespace BoundaryConsumer333
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock333.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock333.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic333.q
  U := readMatrix BoundarySemantic333.q BoundarySemantic333.u
  R := BoundarySemantic333.R
  C := BoundarySemantic333.C
  J := BoundarySemantic333.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic333.A] using BoundarySemantic333.semantic_check
end BoundaryConsumer333

namespace BoundaryConsumer334
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock334.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock334.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic334.q
  U := readMatrix BoundarySemantic334.q BoundarySemantic334.u
  R := BoundarySemantic334.R
  C := BoundarySemantic334.C
  J := BoundarySemantic334.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic334.A] using BoundarySemantic334.semantic_check
end BoundaryConsumer334

namespace BoundaryConsumer335
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock335.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock335.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic335.q
  U := readMatrix BoundarySemantic335.q BoundarySemantic335.u
  R := BoundarySemantic335.R
  C := BoundarySemantic335.C
  J := BoundarySemantic335.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic335.A] using BoundarySemantic335.semantic_check
end BoundaryConsumer335

namespace BoundaryConsumer336
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock336.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock336.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic336.q
  U := readMatrix BoundarySemantic336.q BoundarySemantic336.u
  R := BoundarySemantic336.R
  C := BoundarySemantic336.C
  J := BoundarySemantic336.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic336.A] using BoundarySemantic336.semantic_check
end BoundaryConsumer336

namespace BoundaryConsumer337
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock337.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock337.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic337.q
  U := readMatrix BoundarySemantic337.q BoundarySemantic337.u
  R := BoundarySemantic337.R
  C := BoundarySemantic337.C
  J := BoundarySemantic337.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic337.A] using BoundarySemantic337.semantic_check
end BoundaryConsumer337

namespace BoundaryConsumer338
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock338.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock338.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic338.q
  U := readMatrix BoundarySemantic338.q BoundarySemantic338.u
  R := BoundarySemantic338.R
  C := BoundarySemantic338.C
  J := BoundarySemantic338.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic338.A] using BoundarySemantic338.semantic_check
end BoundaryConsumer338

namespace BoundaryConsumer339
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock339.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock339.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic339.q
  U := readMatrix BoundarySemantic339.q BoundarySemantic339.u
  R := BoundarySemantic339.R
  C := BoundarySemantic339.C
  J := BoundarySemantic339.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic339.A] using BoundarySemantic339.semantic_check
end BoundaryConsumer339

namespace BoundaryConsumer340
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock340.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock340.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic340.q
  U := readMatrix BoundarySemantic340.q BoundarySemantic340.u
  R := BoundarySemantic340.R
  C := BoundarySemantic340.C
  J := BoundarySemantic340.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic340.A] using BoundarySemantic340.semantic_check
end BoundaryConsumer340

namespace BoundaryConsumer341
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock341.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock341.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic341.q
  U := readMatrix BoundarySemantic341.q BoundarySemantic341.u
  R := BoundarySemantic341.R
  C := BoundarySemantic341.C
  J := BoundarySemantic341.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic341.A] using BoundarySemantic341.semantic_check
end BoundaryConsumer341

namespace BoundaryConsumer342
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock342.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock342.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic342.q
  U := readMatrix BoundarySemantic342.q BoundarySemantic342.u
  R := BoundarySemantic342.R
  C := BoundarySemantic342.C
  J := BoundarySemantic342.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic342.A] using BoundarySemantic342.semantic_check
end BoundaryConsumer342

namespace BoundaryConsumer343
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock343.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock343.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic343.q
  U := readMatrix BoundarySemantic343.q BoundarySemantic343.u
  R := BoundarySemantic343.R
  C := BoundarySemantic343.C
  J := BoundarySemantic343.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic343.A] using BoundarySemantic343.semantic_check
end BoundaryConsumer343

namespace BoundaryConsumer344
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock344.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock344.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic344.q
  U := readMatrix BoundarySemantic344.q BoundarySemantic344.u
  R := BoundarySemantic344.R
  C := BoundarySemantic344.C
  J := BoundarySemantic344.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic344.A] using BoundarySemantic344.semantic_check
end BoundaryConsumer344

namespace BoundaryConsumer345
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock345.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock345.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic345.q
  U := readMatrix BoundarySemantic345.q BoundarySemantic345.u
  R := BoundarySemantic345.R
  C := BoundarySemantic345.C
  J := BoundarySemantic345.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic345.A] using BoundarySemantic345.semantic_check
end BoundaryConsumer345

namespace BoundaryConsumer346
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock346.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock346.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic346.q
  U := readMatrix BoundarySemantic346.q BoundarySemantic346.u
  R := BoundarySemantic346.R
  C := BoundarySemantic346.C
  J := BoundarySemantic346.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic346.A] using BoundarySemantic346.semantic_check
end BoundaryConsumer346

namespace BoundaryConsumer347
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock347.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock347.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic347.q
  U := readMatrix BoundarySemantic347.q BoundarySemantic347.u
  R := BoundarySemantic347.R
  C := BoundarySemantic347.C
  J := BoundarySemantic347.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic347.A] using BoundarySemantic347.semantic_check
end BoundaryConsumer347

namespace BoundaryConsumer348
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock348.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock348.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic348.q
  U := readMatrix BoundarySemantic348.q BoundarySemantic348.u
  R := BoundarySemantic348.R
  C := BoundarySemantic348.C
  J := BoundarySemantic348.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic348.A] using BoundarySemantic348.semantic_check
end BoundaryConsumer348

namespace BoundaryConsumer349
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock349.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock349.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic349.q
  U := readMatrix BoundarySemantic349.q BoundarySemantic349.u
  R := BoundarySemantic349.R
  C := BoundarySemantic349.C
  J := BoundarySemantic349.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic349.A] using BoundarySemantic349.semantic_check
end BoundaryConsumer349

namespace BoundaryConsumer350
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock350.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock350.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic350.q
  U := readMatrix BoundarySemantic350.q BoundarySemantic350.u
  R := BoundarySemantic350.R
  C := BoundarySemantic350.C
  J := BoundarySemantic350.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic350.A] using BoundarySemantic350.semantic_check
end BoundaryConsumer350

namespace BoundaryConsumer351
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock351.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock351.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic351.q
  U := readMatrix BoundarySemantic351.q BoundarySemantic351.u
  R := BoundarySemantic351.R
  C := BoundarySemantic351.C
  J := BoundarySemantic351.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic351.A] using BoundarySemantic351.semantic_check
end BoundaryConsumer351

namespace BoundaryConsumer352
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock352.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock352.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic352.q
  U := readMatrix BoundarySemantic352.q BoundarySemantic352.u
  R := BoundarySemantic352.R
  C := BoundarySemantic352.C
  J := BoundarySemantic352.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic352.A] using BoundarySemantic352.semantic_check
end BoundaryConsumer352

namespace BoundaryConsumer353
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock353.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock353.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic353.q
  U := readMatrix BoundarySemantic353.q BoundarySemantic353.u
  R := BoundarySemantic353.R
  C := BoundarySemantic353.C
  J := BoundarySemantic353.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic353.A] using BoundarySemantic353.semantic_check
end BoundaryConsumer353

namespace BoundaryConsumer354
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock354.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock354.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic354.q
  U := readMatrix BoundarySemantic354.q BoundarySemantic354.u
  R := BoundarySemantic354.R
  C := BoundarySemantic354.C
  J := BoundarySemantic354.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic354.A] using BoundarySemantic354.semantic_check
end BoundaryConsumer354

namespace BoundaryConsumer355
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock355.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock355.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic355.q
  U := readMatrix BoundarySemantic355.q BoundarySemantic355.u
  R := BoundarySemantic355.R
  C := BoundarySemantic355.C
  J := BoundarySemantic355.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic355.A] using BoundarySemantic355.semantic_check
end BoundaryConsumer355

namespace BoundaryConsumer356
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock356.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock356.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic356.q
  U := readMatrix BoundarySemantic356.q BoundarySemantic356.u
  R := BoundarySemantic356.R
  C := BoundarySemantic356.C
  J := BoundarySemantic356.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic356.A] using BoundarySemantic356.semantic_check
end BoundaryConsumer356

namespace BoundaryConsumer357
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock357.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock357.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic357.q
  U := readMatrix BoundarySemantic357.q BoundarySemantic357.u
  R := BoundarySemantic357.R
  C := BoundarySemantic357.C
  J := BoundarySemantic357.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic357.A] using BoundarySemantic357.semantic_check
end BoundaryConsumer357

namespace BoundaryConsumer358
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock358.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock358.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic358.q
  U := readMatrix BoundarySemantic358.q BoundarySemantic358.u
  R := BoundarySemantic358.R
  C := BoundarySemantic358.C
  J := BoundarySemantic358.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic358.A] using BoundarySemantic358.semantic_check
end BoundaryConsumer358

namespace BoundaryConsumer359
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock359.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock359.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic359.q
  U := readMatrix BoundarySemantic359.q BoundarySemantic359.u
  R := BoundarySemantic359.R
  C := BoundarySemantic359.C
  J := BoundarySemantic359.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic359.A] using BoundarySemantic359.semantic_check
end BoundaryConsumer359

namespace BoundaryConsumer360
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock360.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock360.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic360.q
  U := readMatrix BoundarySemantic360.q BoundarySemantic360.u
  R := BoundarySemantic360.R
  C := BoundarySemantic360.C
  J := BoundarySemantic360.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic360.A] using BoundarySemantic360.semantic_check
end BoundaryConsumer360

namespace BoundaryConsumer361
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock361.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock361.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic361.q
  U := readMatrix BoundarySemantic361.q BoundarySemantic361.u
  R := BoundarySemantic361.R
  C := BoundarySemantic361.C
  J := BoundarySemantic361.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic361.A] using BoundarySemantic361.semantic_check
end BoundaryConsumer361

namespace BoundaryConsumer362
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock362.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock362.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic362.q
  U := readMatrix BoundarySemantic362.q BoundarySemantic362.u
  R := BoundarySemantic362.R
  C := BoundarySemantic362.C
  J := BoundarySemantic362.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic362.A] using BoundarySemantic362.semantic_check
end BoundaryConsumer362

namespace BoundaryConsumer363
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock363.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock363.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic363.q
  U := readMatrix BoundarySemantic363.q BoundarySemantic363.u
  R := BoundarySemantic363.R
  C := BoundarySemantic363.C
  J := BoundarySemantic363.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic363.A] using BoundarySemantic363.semantic_check
end BoundaryConsumer363

namespace BoundaryConsumer364
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock364.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock364.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic364.q
  U := readMatrix BoundarySemantic364.q BoundarySemantic364.u
  R := BoundarySemantic364.R
  C := BoundarySemantic364.C
  J := BoundarySemantic364.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic364.A] using BoundarySemantic364.semantic_check
end BoundaryConsumer364

namespace BoundaryConsumer365
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock365.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock365.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic365.q
  U := readMatrix BoundarySemantic365.q BoundarySemantic365.u
  R := BoundarySemantic365.R
  C := BoundarySemantic365.C
  J := BoundarySemantic365.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic365.A] using BoundarySemantic365.semantic_check
end BoundaryConsumer365

namespace BoundaryConsumer366
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock366.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock366.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic366.q
  U := readMatrix BoundarySemantic366.q BoundarySemantic366.u
  R := BoundarySemantic366.R
  C := BoundarySemantic366.C
  J := BoundarySemantic366.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic366.A] using BoundarySemantic366.semantic_check
end BoundaryConsumer366

namespace BoundaryConsumer367
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock367.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock367.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic367.q
  U := readMatrix BoundarySemantic367.q BoundarySemantic367.u
  R := BoundarySemantic367.R
  C := BoundarySemantic367.C
  J := BoundarySemantic367.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic367.A] using BoundarySemantic367.semantic_check
end BoundaryConsumer367

namespace BoundaryConsumer368
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock368.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock368.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic368.q
  U := readMatrix BoundarySemantic368.q BoundarySemantic368.u
  R := BoundarySemantic368.R
  C := BoundarySemantic368.C
  J := BoundarySemantic368.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic368.A] using BoundarySemantic368.semantic_check
end BoundaryConsumer368

namespace BoundaryConsumer369
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock369.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock369.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic369.q
  U := readMatrix BoundarySemantic369.q BoundarySemantic369.u
  R := BoundarySemantic369.R
  C := BoundarySemantic369.C
  J := BoundarySemantic369.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic369.A] using BoundarySemantic369.semantic_check
end BoundaryConsumer369

namespace BoundaryConsumer370
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock370.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock370.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic370.q
  U := readMatrix BoundarySemantic370.q BoundarySemantic370.u
  R := BoundarySemantic370.R
  C := BoundarySemantic370.C
  J := BoundarySemantic370.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic370.A] using BoundarySemantic370.semantic_check
end BoundaryConsumer370

namespace BoundaryConsumer371
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock371.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock371.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic371.q
  U := readMatrix BoundarySemantic371.q BoundarySemantic371.u
  R := BoundarySemantic371.R
  C := BoundarySemantic371.C
  J := BoundarySemantic371.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic371.A] using BoundarySemantic371.semantic_check
end BoundaryConsumer371

namespace BoundaryConsumer372
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock372.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock372.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic372.q
  U := readMatrix BoundarySemantic372.q BoundarySemantic372.u
  R := BoundarySemantic372.R
  C := BoundarySemantic372.C
  J := BoundarySemantic372.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic372.A] using BoundarySemantic372.semantic_check
end BoundaryConsumer372

namespace BoundaryConsumer373
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock373.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock373.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic373.q
  U := readMatrix BoundarySemantic373.q BoundarySemantic373.u
  R := BoundarySemantic373.R
  C := BoundarySemantic373.C
  J := BoundarySemantic373.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic373.A] using BoundarySemantic373.semantic_check
end BoundaryConsumer373

namespace BoundaryConsumer374
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock374.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock374.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic374.q
  U := readMatrix BoundarySemantic374.q BoundarySemantic374.u
  R := BoundarySemantic374.R
  C := BoundarySemantic374.C
  J := BoundarySemantic374.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic374.A] using BoundarySemantic374.semantic_check
end BoundaryConsumer374

namespace BoundaryConsumer375
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock375.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock375.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic375.q
  U := readMatrix BoundarySemantic375.q BoundarySemantic375.u
  R := BoundarySemantic375.R
  C := BoundarySemantic375.C
  J := BoundarySemantic375.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic375.A] using BoundarySemantic375.semantic_check
end BoundaryConsumer375

namespace BoundaryConsumer376
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock376.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock376.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic376.q
  U := readMatrix BoundarySemantic376.q BoundarySemantic376.u
  R := BoundarySemantic376.R
  C := BoundarySemantic376.C
  J := BoundarySemantic376.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic376.A] using BoundarySemantic376.semantic_check
end BoundaryConsumer376

namespace BoundaryConsumer377
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock377.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock377.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic377.q
  U := readMatrix BoundarySemantic377.q BoundarySemantic377.u
  R := BoundarySemantic377.R
  C := BoundarySemantic377.C
  J := BoundarySemantic377.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic377.A] using BoundarySemantic377.semantic_check
end BoundaryConsumer377

namespace BoundaryConsumer378
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock378.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock378.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic378.q
  U := readMatrix BoundarySemantic378.q BoundarySemantic378.u
  R := BoundarySemantic378.R
  C := BoundarySemantic378.C
  J := BoundarySemantic378.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic378.A] using BoundarySemantic378.semantic_check
end BoundaryConsumer378

namespace BoundaryConsumer379
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock379.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock379.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic379.q
  U := readMatrix BoundarySemantic379.q BoundarySemantic379.u
  R := BoundarySemantic379.R
  C := BoundarySemantic379.C
  J := BoundarySemantic379.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic379.A] using BoundarySemantic379.semantic_check
end BoundaryConsumer379

namespace BoundaryConsumer380
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock380.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock380.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic380.q
  U := readMatrix BoundarySemantic380.q BoundarySemantic380.u
  R := BoundarySemantic380.R
  C := BoundarySemantic380.C
  J := BoundarySemantic380.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic380.A] using BoundarySemantic380.semantic_check
end BoundaryConsumer380

namespace BoundaryConsumer381
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock381.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock381.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic381.q
  U := readMatrix BoundarySemantic381.q BoundarySemantic381.u
  R := BoundarySemantic381.R
  C := BoundarySemantic381.C
  J := BoundarySemantic381.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic381.A] using BoundarySemantic381.semantic_check
end BoundaryConsumer381

namespace BoundaryConsumer382
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock382.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock382.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic382.q
  U := readMatrix BoundarySemantic382.q BoundarySemantic382.u
  R := BoundarySemantic382.R
  C := BoundarySemantic382.C
  J := BoundarySemantic382.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic382.A] using BoundarySemantic382.semantic_check
end BoundaryConsumer382

namespace BoundaryConsumer383
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock383.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock383.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic383.q
  U := readMatrix BoundarySemantic383.q BoundarySemantic383.u
  R := BoundarySemantic383.R
  C := BoundarySemantic383.C
  J := BoundarySemantic383.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic383.A] using BoundarySemantic383.semantic_check
end BoundaryConsumer383

namespace BoundaryConsumer384
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock384.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock384.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic384.q
  U := readMatrix BoundarySemantic384.q BoundarySemantic384.u
  R := BoundarySemantic384.R
  C := BoundarySemantic384.C
  J := BoundarySemantic384.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic384.A] using BoundarySemantic384.semantic_check
end BoundaryConsumer384

namespace BoundaryConsumer385
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock385.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock385.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic385.q
  U := readMatrix BoundarySemantic385.q BoundarySemantic385.u
  R := BoundarySemantic385.R
  C := BoundarySemantic385.C
  J := BoundarySemantic385.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic385.A] using BoundarySemantic385.semantic_check
end BoundaryConsumer385

namespace BoundaryConsumer386
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock386.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock386.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic386.q
  U := readMatrix BoundarySemantic386.q BoundarySemantic386.u
  R := BoundarySemantic386.R
  C := BoundarySemantic386.C
  J := BoundarySemantic386.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic386.A] using BoundarySemantic386.semantic_check
end BoundaryConsumer386

namespace BoundaryConsumer387
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock387.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock387.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic387.q
  U := readMatrix BoundarySemantic387.q BoundarySemantic387.u
  R := BoundarySemantic387.R
  C := BoundarySemantic387.C
  J := BoundarySemantic387.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic387.A] using BoundarySemantic387.semantic_check
end BoundaryConsumer387

namespace BoundaryConsumer388
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock388.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock388.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic388.q
  U := readMatrix BoundarySemantic388.q BoundarySemantic388.u
  R := BoundarySemantic388.R
  C := BoundarySemantic388.C
  J := BoundarySemantic388.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic388.A] using BoundarySemantic388.semantic_check
end BoundaryConsumer388

namespace BoundaryConsumer389
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock389.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock389.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic389.q
  U := readMatrix BoundarySemantic389.q BoundarySemantic389.u
  R := BoundarySemantic389.R
  C := BoundarySemantic389.C
  J := BoundarySemantic389.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic389.A] using BoundarySemantic389.semantic_check
end BoundaryConsumer389

namespace BoundaryConsumer390
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock390.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock390.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic390.q
  U := readMatrix BoundarySemantic390.q BoundarySemantic390.u
  R := BoundarySemantic390.R
  C := BoundarySemantic390.C
  J := BoundarySemantic390.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic390.A] using BoundarySemantic390.semantic_check
end BoundaryConsumer390

namespace BoundaryConsumer391
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock391.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock391.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic391.q
  U := readMatrix BoundarySemantic391.q BoundarySemantic391.u
  R := BoundarySemantic391.R
  C := BoundarySemantic391.C
  J := BoundarySemantic391.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic391.A] using BoundarySemantic391.semantic_check
end BoundaryConsumer391

namespace BoundaryConsumer392
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock392.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock392.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic392.q
  U := readMatrix BoundarySemantic392.q BoundarySemantic392.u
  R := BoundarySemantic392.R
  C := BoundarySemantic392.C
  J := BoundarySemantic392.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic392.A] using BoundarySemantic392.semantic_check
end BoundaryConsumer392

namespace BoundaryConsumer393
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock393.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock393.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic393.q
  U := readMatrix BoundarySemantic393.q BoundarySemantic393.u
  R := BoundarySemantic393.R
  C := BoundarySemantic393.C
  J := BoundarySemantic393.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic393.A] using BoundarySemantic393.semantic_check
end BoundaryConsumer393

namespace BoundaryConsumer394
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock394.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock394.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic394.q
  U := readMatrix BoundarySemantic394.q BoundarySemantic394.u
  R := BoundarySemantic394.R
  C := BoundarySemantic394.C
  J := BoundarySemantic394.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic394.A] using BoundarySemantic394.semantic_check
end BoundaryConsumer394

namespace BoundaryConsumer395
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock395.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock395.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic395.q
  U := readMatrix BoundarySemantic395.q BoundarySemantic395.u
  R := BoundarySemantic395.R
  C := BoundarySemantic395.C
  J := BoundarySemantic395.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic395.A] using BoundarySemantic395.semantic_check
end BoundaryConsumer395

namespace BoundaryConsumer396
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock396.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock396.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic396.q
  U := readMatrix BoundarySemantic396.q BoundarySemantic396.u
  R := BoundarySemantic396.R
  C := BoundarySemantic396.C
  J := BoundarySemantic396.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic396.A] using BoundarySemantic396.semantic_check
end BoundaryConsumer396

namespace BoundaryConsumer397
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock397.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock397.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic397.q
  U := readMatrix BoundarySemantic397.q BoundarySemantic397.u
  R := BoundarySemantic397.R
  C := BoundarySemantic397.C
  J := BoundarySemantic397.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic397.A] using BoundarySemantic397.semantic_check
end BoundaryConsumer397

namespace BoundaryConsumer398
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock398.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock398.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic398.q
  U := readMatrix BoundarySemantic398.q BoundarySemantic398.u
  R := BoundarySemantic398.R
  C := BoundarySemantic398.C
  J := BoundarySemantic398.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic398.A] using BoundarySemantic398.semantic_check
end BoundaryConsumer398

namespace BoundaryConsumer399
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock399.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock399.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic399.q
  U := readMatrix BoundarySemantic399.q BoundarySemantic399.u
  R := BoundarySemantic399.R
  C := BoundarySemantic399.C
  J := BoundarySemantic399.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic399.A] using BoundarySemantic399.semantic_check
end BoundaryConsumer399

namespace BoundaryConsumer400
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock400.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock400.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic400.q
  U := readMatrix BoundarySemantic400.q BoundarySemantic400.u
  R := BoundarySemantic400.R
  C := BoundarySemantic400.C
  J := BoundarySemantic400.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic400.A] using BoundarySemantic400.semantic_check
end BoundaryConsumer400

namespace BoundaryConsumer401
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock401.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock401.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic401.q
  U := readMatrix BoundarySemantic401.q BoundarySemantic401.u
  R := BoundarySemantic401.R
  C := BoundarySemantic401.C
  J := BoundarySemantic401.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic401.A] using BoundarySemantic401.semantic_check
end BoundaryConsumer401

namespace BoundaryConsumer402
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock402.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock402.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic402.q
  U := readMatrix BoundarySemantic402.q BoundarySemantic402.u
  R := BoundarySemantic402.R
  C := BoundarySemantic402.C
  J := BoundarySemantic402.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic402.A] using BoundarySemantic402.semantic_check
end BoundaryConsumer402

namespace BoundaryConsumer403
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock403.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock403.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic403.q
  U := readMatrix BoundarySemantic403.q BoundarySemantic403.u
  R := BoundarySemantic403.R
  C := BoundarySemantic403.C
  J := BoundarySemantic403.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic403.A] using BoundarySemantic403.semantic_check
end BoundaryConsumer403

namespace BoundaryConsumer404
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock404.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock404.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic404.q
  U := readMatrix BoundarySemantic404.q BoundarySemantic404.u
  R := BoundarySemantic404.R
  C := BoundarySemantic404.C
  J := BoundarySemantic404.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic404.A] using BoundarySemantic404.semantic_check
end BoundaryConsumer404

namespace BoundaryConsumer405
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock405.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock405.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic405.q
  U := readMatrix BoundarySemantic405.q BoundarySemantic405.u
  R := BoundarySemantic405.R
  C := BoundarySemantic405.C
  J := BoundarySemantic405.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic405.A] using BoundarySemantic405.semantic_check
end BoundaryConsumer405

namespace BoundaryConsumer406
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock406.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock406.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic406.q
  U := readMatrix BoundarySemantic406.q BoundarySemantic406.u
  R := BoundarySemantic406.R
  C := BoundarySemantic406.C
  J := BoundarySemantic406.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic406.A] using BoundarySemantic406.semantic_check
end BoundaryConsumer406

namespace BoundaryConsumer407
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock407.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock407.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic407.q
  U := readMatrix BoundarySemantic407.q BoundarySemantic407.u
  R := BoundarySemantic407.R
  C := BoundarySemantic407.C
  J := BoundarySemantic407.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic407.A] using BoundarySemantic407.semantic_check
end BoundaryConsumer407

namespace BoundaryConsumer408
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock408.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock408.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic408.q
  U := readMatrix BoundarySemantic408.q BoundarySemantic408.u
  R := BoundarySemantic408.R
  C := BoundarySemantic408.C
  J := BoundarySemantic408.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic408.A] using BoundarySemantic408.semantic_check
end BoundaryConsumer408

namespace BoundaryConsumer409
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock409.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock409.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic409.q
  U := readMatrix BoundarySemantic409.q BoundarySemantic409.u
  R := BoundarySemantic409.R
  C := BoundarySemantic409.C
  J := BoundarySemantic409.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic409.A] using BoundarySemantic409.semantic_check
end BoundaryConsumer409

namespace BoundaryConsumer410
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock410.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock410.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic410.q
  U := readMatrix BoundarySemantic410.q BoundarySemantic410.u
  R := BoundarySemantic410.R
  C := BoundarySemantic410.C
  J := BoundarySemantic410.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic410.A] using BoundarySemantic410.semantic_check
end BoundaryConsumer410

namespace BoundaryConsumer411
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock411.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock411.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic411.q
  U := readMatrix BoundarySemantic411.q BoundarySemantic411.u
  R := BoundarySemantic411.R
  C := BoundarySemantic411.C
  J := BoundarySemantic411.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic411.A] using BoundarySemantic411.semantic_check
end BoundaryConsumer411

namespace BoundaryConsumer412
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock412.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock412.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic412.q
  U := readMatrix BoundarySemantic412.q BoundarySemantic412.u
  R := BoundarySemantic412.R
  C := BoundarySemantic412.C
  J := BoundarySemantic412.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic412.A] using BoundarySemantic412.semantic_check
end BoundaryConsumer412

namespace BoundaryConsumer413
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock413.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock413.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic413.q
  U := readMatrix BoundarySemantic413.q BoundarySemantic413.u
  R := BoundarySemantic413.R
  C := BoundarySemantic413.C
  J := BoundarySemantic413.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic413.A] using BoundarySemantic413.semantic_check
end BoundaryConsumer413

namespace BoundaryConsumer414
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock414.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock414.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic414.q
  U := readMatrix BoundarySemantic414.q BoundarySemantic414.u
  R := BoundarySemantic414.R
  C := BoundarySemantic414.C
  J := BoundarySemantic414.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic414.A] using BoundarySemantic414.semantic_check
end BoundaryConsumer414

namespace BoundaryConsumer415
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock415.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock415.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic415.q
  U := readMatrix BoundarySemantic415.q BoundarySemantic415.u
  R := BoundarySemantic415.R
  C := BoundarySemantic415.C
  J := BoundarySemantic415.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic415.A] using BoundarySemantic415.semantic_check
end BoundaryConsumer415

namespace BoundaryConsumer416
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock416.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock416.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic416.q
  U := readMatrix BoundarySemantic416.q BoundarySemantic416.u
  R := BoundarySemantic416.R
  C := BoundarySemantic416.C
  J := BoundarySemantic416.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic416.A] using BoundarySemantic416.semantic_check
end BoundaryConsumer416

namespace BoundaryConsumer417
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock417.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock417.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic417.q
  U := readMatrix BoundarySemantic417.q BoundarySemantic417.u
  R := BoundarySemantic417.R
  C := BoundarySemantic417.C
  J := BoundarySemantic417.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic417.A] using BoundarySemantic417.semantic_check
end BoundaryConsumer417

namespace BoundaryConsumer418
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock418.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock418.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic418.q
  U := readMatrix BoundarySemantic418.q BoundarySemantic418.u
  R := BoundarySemantic418.R
  C := BoundarySemantic418.C
  J := BoundarySemantic418.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic418.A] using BoundarySemantic418.semantic_check
end BoundaryConsumer418

namespace BoundaryConsumer419
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock419.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock419.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic419.q
  U := readMatrix BoundarySemantic419.q BoundarySemantic419.u
  R := BoundarySemantic419.R
  C := BoundarySemantic419.C
  J := BoundarySemantic419.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic419.A] using BoundarySemantic419.semantic_check
end BoundaryConsumer419

namespace BoundaryConsumer420
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock420.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock420.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic420.q
  U := readMatrix BoundarySemantic420.q BoundarySemantic420.u
  R := BoundarySemantic420.R
  C := BoundarySemantic420.C
  J := BoundarySemantic420.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic420.A] using BoundarySemantic420.semantic_check
end BoundaryConsumer420

namespace BoundaryConsumer421
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock421.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock421.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic421.q
  U := readMatrix BoundarySemantic421.q BoundarySemantic421.u
  R := BoundarySemantic421.R
  C := BoundarySemantic421.C
  J := BoundarySemantic421.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic421.A] using BoundarySemantic421.semantic_check
end BoundaryConsumer421

namespace BoundaryConsumer422
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock422.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock422.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic422.q
  U := readMatrix BoundarySemantic422.q BoundarySemantic422.u
  R := BoundarySemantic422.R
  C := BoundarySemantic422.C
  J := BoundarySemantic422.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic422.A] using BoundarySemantic422.semantic_check
end BoundaryConsumer422

namespace BoundaryConsumer423
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock423.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock423.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic423.q
  U := readMatrix BoundarySemantic423.q BoundarySemantic423.u
  R := BoundarySemantic423.R
  C := BoundarySemantic423.C
  J := BoundarySemantic423.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic423.A] using BoundarySemantic423.semantic_check
end BoundaryConsumer423

namespace BoundaryConsumer424
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock424.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock424.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic424.q
  U := readMatrix BoundarySemantic424.q BoundarySemantic424.u
  R := BoundarySemantic424.R
  C := BoundarySemantic424.C
  J := BoundarySemantic424.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic424.A] using BoundarySemantic424.semantic_check
end BoundaryConsumer424

namespace BoundaryConsumer425
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock425.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock425.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic425.q
  U := readMatrix BoundarySemantic425.q BoundarySemantic425.u
  R := BoundarySemantic425.R
  C := BoundarySemantic425.C
  J := BoundarySemantic425.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic425.A] using BoundarySemantic425.semantic_check
end BoundaryConsumer425

namespace BoundaryConsumer426
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock426.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock426.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic426.q
  U := readMatrix BoundarySemantic426.q BoundarySemantic426.u
  R := BoundarySemantic426.R
  C := BoundarySemantic426.C
  J := BoundarySemantic426.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic426.A] using BoundarySemantic426.semantic_check
end BoundaryConsumer426

namespace BoundaryConsumer427
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock427.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock427.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic427.q
  U := readMatrix BoundarySemantic427.q BoundarySemantic427.u
  R := BoundarySemantic427.R
  C := BoundarySemantic427.C
  J := BoundarySemantic427.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic427.A] using BoundarySemantic427.semantic_check
end BoundaryConsumer427

namespace BoundaryConsumer428
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock428.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock428.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic428.q
  U := readMatrix BoundarySemantic428.q BoundarySemantic428.u
  R := BoundarySemantic428.R
  C := BoundarySemantic428.C
  J := BoundarySemantic428.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic428.A] using BoundarySemantic428.semantic_check
end BoundaryConsumer428

namespace BoundaryConsumer429
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock429.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock429.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic429.q
  U := readMatrix BoundarySemantic429.q BoundarySemantic429.u
  R := BoundarySemantic429.R
  C := BoundarySemantic429.C
  J := BoundarySemantic429.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic429.A] using BoundarySemantic429.semantic_check
end BoundaryConsumer429

namespace BoundaryConsumer430
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock430.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock430.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic430.q
  U := readMatrix BoundarySemantic430.q BoundarySemantic430.u
  R := BoundarySemantic430.R
  C := BoundarySemantic430.C
  J := BoundarySemantic430.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic430.A] using BoundarySemantic430.semantic_check
end BoundaryConsumer430

namespace BoundaryConsumer431
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock431.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock431.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic431.q
  U := readMatrix BoundarySemantic431.q BoundarySemantic431.u
  R := BoundarySemantic431.R
  C := BoundarySemantic431.C
  J := BoundarySemantic431.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic431.A] using BoundarySemantic431.semantic_check
end BoundaryConsumer431

namespace BoundaryConsumer432
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock432.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock432.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic432.q
  U := readMatrix BoundarySemantic432.q BoundarySemantic432.u
  R := BoundarySemantic432.R
  C := BoundarySemantic432.C
  J := BoundarySemantic432.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic432.A] using BoundarySemantic432.semantic_check
end BoundaryConsumer432

namespace BoundaryConsumer433
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock433.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock433.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic433.q
  U := readMatrix BoundarySemantic433.q BoundarySemantic433.u
  R := BoundarySemantic433.R
  C := BoundarySemantic433.C
  J := BoundarySemantic433.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic433.A] using BoundarySemantic433.semantic_check
end BoundaryConsumer433

namespace BoundaryConsumer434
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock434.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock434.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic434.q
  U := readMatrix BoundarySemantic434.q BoundarySemantic434.u
  R := BoundarySemantic434.R
  C := BoundarySemantic434.C
  J := BoundarySemantic434.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic434.A] using BoundarySemantic434.semantic_check
end BoundaryConsumer434

namespace BoundaryConsumer435
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock435.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock435.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic435.q
  U := readMatrix BoundarySemantic435.q BoundarySemantic435.u
  R := BoundarySemantic435.R
  C := BoundarySemantic435.C
  J := BoundarySemantic435.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic435.A] using BoundarySemantic435.semantic_check
end BoundaryConsumer435

namespace BoundaryConsumer436
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock436.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock436.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic436.q
  U := readMatrix BoundarySemantic436.q BoundarySemantic436.u
  R := BoundarySemantic436.R
  C := BoundarySemantic436.C
  J := BoundarySemantic436.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic436.A] using BoundarySemantic436.semantic_check
end BoundaryConsumer436

namespace BoundaryConsumer437
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock437.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock437.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic437.q
  U := readMatrix BoundarySemantic437.q BoundarySemantic437.u
  R := BoundarySemantic437.R
  C := BoundarySemantic437.C
  J := BoundarySemantic437.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic437.A] using BoundarySemantic437.semantic_check
end BoundaryConsumer437

namespace BoundaryConsumer438
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock438.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock438.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic438.q
  U := readMatrix BoundarySemantic438.q BoundarySemantic438.u
  R := BoundarySemantic438.R
  C := BoundarySemantic438.C
  J := BoundarySemantic438.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic438.A] using BoundarySemantic438.semantic_check
end BoundaryConsumer438

namespace BoundaryConsumer439
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock439.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock439.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic439.q
  U := readMatrix BoundarySemantic439.q BoundarySemantic439.u
  R := BoundarySemantic439.R
  C := BoundarySemantic439.C
  J := BoundarySemantic439.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic439.A] using BoundarySemantic439.semantic_check
end BoundaryConsumer439

namespace BoundaryConsumer440
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock440.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock440.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic440.q
  U := readMatrix BoundarySemantic440.q BoundarySemantic440.u
  R := BoundarySemantic440.R
  C := BoundarySemantic440.C
  J := BoundarySemantic440.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic440.A] using BoundarySemantic440.semantic_check
end BoundaryConsumer440

namespace BoundaryConsumer441
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock441.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock441.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic441.q
  U := readMatrix BoundarySemantic441.q BoundarySemantic441.u
  R := BoundarySemantic441.R
  C := BoundarySemantic441.C
  J := BoundarySemantic441.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic441.A] using BoundarySemantic441.semantic_check
end BoundaryConsumer441

namespace BoundaryConsumer442
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock442.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock442.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic442.q
  U := readMatrix BoundarySemantic442.q BoundarySemantic442.u
  R := BoundarySemantic442.R
  C := BoundarySemantic442.C
  J := BoundarySemantic442.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic442.A] using BoundarySemantic442.semantic_check
end BoundaryConsumer442

namespace BoundaryConsumer443
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock443.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock443.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic443.q
  U := readMatrix BoundarySemantic443.q BoundarySemantic443.u
  R := BoundarySemantic443.R
  C := BoundarySemantic443.C
  J := BoundarySemantic443.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic443.A] using BoundarySemantic443.semantic_check
end BoundaryConsumer443

namespace BoundaryConsumer444
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock444.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock444.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic444.q
  U := readMatrix BoundarySemantic444.q BoundarySemantic444.u
  R := BoundarySemantic444.R
  C := BoundarySemantic444.C
  J := BoundarySemantic444.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic444.A] using BoundarySemantic444.semantic_check
end BoundaryConsumer444

namespace BoundaryConsumer445
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock445.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock445.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic445.q
  U := readMatrix BoundarySemantic445.q BoundarySemantic445.u
  R := BoundarySemantic445.R
  C := BoundarySemantic445.C
  J := BoundarySemantic445.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic445.A] using BoundarySemantic445.semantic_check
end BoundaryConsumer445

namespace BoundaryConsumer446
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock446.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock446.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic446.q
  U := readMatrix BoundarySemantic446.q BoundarySemantic446.u
  R := BoundarySemantic446.R
  C := BoundarySemantic446.C
  J := BoundarySemantic446.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic446.A] using BoundarySemantic446.semantic_check
end BoundaryConsumer446

namespace BoundaryConsumer447
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock447.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock447.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic447.q
  U := readMatrix BoundarySemantic447.q BoundarySemantic447.u
  R := BoundarySemantic447.R
  C := BoundarySemantic447.C
  J := BoundarySemantic447.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic447.A] using BoundarySemantic447.semantic_check
end BoundaryConsumer447

namespace BoundaryConsumer448
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock448.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock448.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic448.q
  U := readMatrix BoundarySemantic448.q BoundarySemantic448.u
  R := BoundarySemantic448.R
  C := BoundarySemantic448.C
  J := BoundarySemantic448.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic448.A] using BoundarySemantic448.semantic_check
end BoundaryConsumer448

namespace BoundaryConsumer449
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock449.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock449.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic449.q
  U := readMatrix BoundarySemantic449.q BoundarySemantic449.u
  R := BoundarySemantic449.R
  C := BoundarySemantic449.C
  J := BoundarySemantic449.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic449.A] using BoundarySemantic449.semantic_check
end BoundaryConsumer449

namespace BoundaryConsumer450
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock450.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock450.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic450.q
  U := readMatrix BoundarySemantic450.q BoundarySemantic450.u
  R := BoundarySemantic450.R
  C := BoundarySemantic450.C
  J := BoundarySemantic450.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic450.A] using BoundarySemantic450.semantic_check
end BoundaryConsumer450

namespace BoundaryConsumer451
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock451.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock451.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic451.q
  U := readMatrix BoundarySemantic451.q BoundarySemantic451.u
  R := BoundarySemantic451.R
  C := BoundarySemantic451.C
  J := BoundarySemantic451.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic451.A] using BoundarySemantic451.semantic_check
end BoundaryConsumer451

namespace BoundaryConsumer452
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock452.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock452.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic452.q
  U := readMatrix BoundarySemantic452.q BoundarySemantic452.u
  R := BoundarySemantic452.R
  C := BoundarySemantic452.C
  J := BoundarySemantic452.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic452.A] using BoundarySemantic452.semantic_check
end BoundaryConsumer452

namespace BoundaryConsumer453
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock453.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock453.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic453.q
  U := readMatrix BoundarySemantic453.q BoundarySemantic453.u
  R := BoundarySemantic453.R
  C := BoundarySemantic453.C
  J := BoundarySemantic453.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic453.A] using BoundarySemantic453.semantic_check
end BoundaryConsumer453

namespace BoundaryConsumer454
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock454.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock454.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic454.q
  U := readMatrix BoundarySemantic454.q BoundarySemantic454.u
  R := BoundarySemantic454.R
  C := BoundarySemantic454.C
  J := BoundarySemantic454.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic454.A] using BoundarySemantic454.semantic_check
end BoundaryConsumer454

namespace BoundaryConsumer455
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock455.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock455.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic455.q
  U := readMatrix BoundarySemantic455.q BoundarySemantic455.u
  R := BoundarySemantic455.R
  C := BoundarySemantic455.C
  J := BoundarySemantic455.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic455.A] using BoundarySemantic455.semantic_check
end BoundaryConsumer455

namespace BoundaryConsumer456
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock456.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock456.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic456.q
  U := readMatrix BoundarySemantic456.q BoundarySemantic456.u
  R := BoundarySemantic456.R
  C := BoundarySemantic456.C
  J := BoundarySemantic456.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic456.A] using BoundarySemantic456.semantic_check
end BoundaryConsumer456

namespace BoundaryConsumer457
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock457.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock457.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic457.q
  U := readMatrix BoundarySemantic457.q BoundarySemantic457.u
  R := BoundarySemantic457.R
  C := BoundarySemantic457.C
  J := BoundarySemantic457.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic457.A] using BoundarySemantic457.semantic_check
end BoundaryConsumer457

namespace BoundaryConsumer458
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock458.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock458.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic458.q
  U := readMatrix BoundarySemantic458.q BoundarySemantic458.u
  R := BoundarySemantic458.R
  C := BoundarySemantic458.C
  J := BoundarySemantic458.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic458.A] using BoundarySemantic458.semantic_check
end BoundaryConsumer458

namespace BoundaryConsumer459
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock459.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock459.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic459.q
  U := readMatrix BoundarySemantic459.q BoundarySemantic459.u
  R := BoundarySemantic459.R
  C := BoundarySemantic459.C
  J := BoundarySemantic459.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic459.A] using BoundarySemantic459.semantic_check
end BoundaryConsumer459

namespace BoundaryConsumer460
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock460.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock460.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic460.q
  U := readMatrix BoundarySemantic460.q BoundarySemantic460.u
  R := BoundarySemantic460.R
  C := BoundarySemantic460.C
  J := BoundarySemantic460.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic460.A] using BoundarySemantic460.semantic_check
end BoundaryConsumer460

namespace BoundaryConsumer461
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock461.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock461.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic461.q
  U := readMatrix BoundarySemantic461.q BoundarySemantic461.u
  R := BoundarySemantic461.R
  C := BoundarySemantic461.C
  J := BoundarySemantic461.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic461.A] using BoundarySemantic461.semantic_check
end BoundaryConsumer461

namespace BoundaryConsumer462
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock462.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock462.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic462.q
  U := readMatrix BoundarySemantic462.q BoundarySemantic462.u
  R := BoundarySemantic462.R
  C := BoundarySemantic462.C
  J := BoundarySemantic462.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic462.A] using BoundarySemantic462.semantic_check
end BoundaryConsumer462

namespace BoundaryConsumer463
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock463.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock463.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic463.q
  U := readMatrix BoundarySemantic463.q BoundarySemantic463.u
  R := BoundarySemantic463.R
  C := BoundarySemantic463.C
  J := BoundarySemantic463.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic463.A] using BoundarySemantic463.semantic_check
end BoundaryConsumer463

namespace BoundaryConsumer464
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock464.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock464.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic464.q
  U := readMatrix BoundarySemantic464.q BoundarySemantic464.u
  R := BoundarySemantic464.R
  C := BoundarySemantic464.C
  J := BoundarySemantic464.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic464.A] using BoundarySemantic464.semantic_check
end BoundaryConsumer464

namespace BoundaryConsumer465
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock465.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock465.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic465.q
  U := readMatrix BoundarySemantic465.q BoundarySemantic465.u
  R := BoundarySemantic465.R
  C := BoundarySemantic465.C
  J := BoundarySemantic465.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic465.A] using BoundarySemantic465.semantic_check
end BoundaryConsumer465

namespace BoundaryConsumer466
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock466.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock466.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic466.q
  U := readMatrix BoundarySemantic466.q BoundarySemantic466.u
  R := BoundarySemantic466.R
  C := BoundarySemantic466.C
  J := BoundarySemantic466.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic466.A] using BoundarySemantic466.semantic_check
end BoundaryConsumer466

namespace BoundaryConsumer467
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock467.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock467.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic467.q
  U := readMatrix BoundarySemantic467.q BoundarySemantic467.u
  R := BoundarySemantic467.R
  C := BoundarySemantic467.C
  J := BoundarySemantic467.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic467.A] using BoundarySemantic467.semantic_check
end BoundaryConsumer467

namespace BoundaryConsumer468
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock468.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock468.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic468.q
  U := readMatrix BoundarySemantic468.q BoundarySemantic468.u
  R := BoundarySemantic468.R
  C := BoundarySemantic468.C
  J := BoundarySemantic468.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic468.A] using BoundarySemantic468.semantic_check
end BoundaryConsumer468

namespace BoundaryConsumer469
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock469.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock469.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic469.q
  U := readMatrix BoundarySemantic469.q BoundarySemantic469.u
  R := BoundarySemantic469.R
  C := BoundarySemantic469.C
  J := BoundarySemantic469.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic469.A] using BoundarySemantic469.semantic_check
end BoundaryConsumer469

namespace BoundaryConsumer470
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock470.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock470.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic470.q
  U := readMatrix BoundarySemantic470.q BoundarySemantic470.u
  R := BoundarySemantic470.R
  C := BoundarySemantic470.C
  J := BoundarySemantic470.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic470.A] using BoundarySemantic470.semantic_check
end BoundaryConsumer470

namespace BoundaryConsumer471
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock471.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock471.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic471.q
  U := readMatrix BoundarySemantic471.q BoundarySemantic471.u
  R := BoundarySemantic471.R
  C := BoundarySemantic471.C
  J := BoundarySemantic471.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic471.A] using BoundarySemantic471.semantic_check
end BoundaryConsumer471

namespace BoundaryConsumer472
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock472.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock472.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic472.q
  U := readMatrix BoundarySemantic472.q BoundarySemantic472.u
  R := BoundarySemantic472.R
  C := BoundarySemantic472.C
  J := BoundarySemantic472.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic472.A] using BoundarySemantic472.semantic_check
end BoundaryConsumer472

namespace BoundaryConsumer473
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock473.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock473.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic473.q
  U := readMatrix BoundarySemantic473.q BoundarySemantic473.u
  R := BoundarySemantic473.R
  C := BoundarySemantic473.C
  J := BoundarySemantic473.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic473.A] using BoundarySemantic473.semantic_check
end BoundaryConsumer473

namespace BoundaryConsumer474
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock474.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock474.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic474.q
  U := readMatrix BoundarySemantic474.q BoundarySemantic474.u
  R := BoundarySemantic474.R
  C := BoundarySemantic474.C
  J := BoundarySemantic474.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic474.A] using BoundarySemantic474.semantic_check
end BoundaryConsumer474

namespace BoundaryConsumer475
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock475.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock475.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic475.q
  U := readMatrix BoundarySemantic475.q BoundarySemantic475.u
  R := BoundarySemantic475.R
  C := BoundarySemantic475.C
  J := BoundarySemantic475.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic475.A] using BoundarySemantic475.semantic_check
end BoundaryConsumer475

namespace BoundaryConsumer476
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock476.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock476.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic476.q
  U := readMatrix BoundarySemantic476.q BoundarySemantic476.u
  R := BoundarySemantic476.R
  C := BoundarySemantic476.C
  J := BoundarySemantic476.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic476.A] using BoundarySemantic476.semantic_check
end BoundaryConsumer476

namespace BoundaryConsumer477
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock477.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock477.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic477.q
  U := readMatrix BoundarySemantic477.q BoundarySemantic477.u
  R := BoundarySemantic477.R
  C := BoundarySemantic477.C
  J := BoundarySemantic477.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic477.A] using BoundarySemantic477.semantic_check
end BoundaryConsumer477

namespace BoundaryConsumer478
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock478.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock478.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic478.q
  U := readMatrix BoundarySemantic478.q BoundarySemantic478.u
  R := BoundarySemantic478.R
  C := BoundarySemantic478.C
  J := BoundarySemantic478.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic478.A] using BoundarySemantic478.semantic_check
end BoundaryConsumer478

namespace BoundaryConsumer479
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock479.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock479.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic479.q
  U := readMatrix BoundarySemantic479.q BoundarySemantic479.u
  R := BoundarySemantic479.R
  C := BoundarySemantic479.C
  J := BoundarySemantic479.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic479.A] using BoundarySemantic479.semantic_check
end BoundaryConsumer479

namespace BoundaryConsumer480
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock480.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock480.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic480.q
  U := readMatrix BoundarySemantic480.q BoundarySemantic480.u
  R := BoundarySemantic480.R
  C := BoundarySemantic480.C
  J := BoundarySemantic480.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic480.A] using BoundarySemantic480.semantic_check
end BoundaryConsumer480

namespace BoundaryConsumer481
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock481.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock481.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic481.q
  U := readMatrix BoundarySemantic481.q BoundarySemantic481.u
  R := BoundarySemantic481.R
  C := BoundarySemantic481.C
  J := BoundarySemantic481.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic481.A] using BoundarySemantic481.semantic_check
end BoundaryConsumer481

namespace BoundaryConsumer482
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock482.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock482.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic482.q
  U := readMatrix BoundarySemantic482.q BoundarySemantic482.u
  R := BoundarySemantic482.R
  C := BoundarySemantic482.C
  J := BoundarySemantic482.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic482.A] using BoundarySemantic482.semantic_check
end BoundaryConsumer482

namespace BoundaryConsumer483
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock483.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock483.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic483.q
  U := readMatrix BoundarySemantic483.q BoundarySemantic483.u
  R := BoundarySemantic483.R
  C := BoundarySemantic483.C
  J := BoundarySemantic483.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic483.A] using BoundarySemantic483.semantic_check
end BoundaryConsumer483

namespace BoundaryConsumer484
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock484.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock484.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic484.q
  U := readMatrix BoundarySemantic484.q BoundarySemantic484.u
  R := BoundarySemantic484.R
  C := BoundarySemantic484.C
  J := BoundarySemantic484.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic484.A] using BoundarySemantic484.semantic_check
end BoundaryConsumer484

namespace BoundaryConsumer485
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock485.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock485.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic485.q
  U := readMatrix BoundarySemantic485.q BoundarySemantic485.u
  R := BoundarySemantic485.R
  C := BoundarySemantic485.C
  J := BoundarySemantic485.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic485.A] using BoundarySemantic485.semantic_check
end BoundaryConsumer485

namespace BoundaryConsumer486
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock486.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock486.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic486.q
  U := readMatrix BoundarySemantic486.q BoundarySemantic486.u
  R := BoundarySemantic486.R
  C := BoundarySemantic486.C
  J := BoundarySemantic486.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic486.A] using BoundarySemantic486.semantic_check
end BoundaryConsumer486

namespace BoundaryConsumer487
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock487.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock487.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic487.q
  U := readMatrix BoundarySemantic487.q BoundarySemantic487.u
  R := BoundarySemantic487.R
  C := BoundarySemantic487.C
  J := BoundarySemantic487.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic487.A] using BoundarySemantic487.semantic_check
end BoundaryConsumer487

namespace BoundaryConsumer488
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock488.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock488.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic488.q
  U := readMatrix BoundarySemantic488.q BoundarySemantic488.u
  R := BoundarySemantic488.R
  C := BoundarySemantic488.C
  J := BoundarySemantic488.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic488.A] using BoundarySemantic488.semantic_check
end BoundaryConsumer488

namespace BoundaryConsumer489
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock489.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock489.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic489.q
  U := readMatrix BoundarySemantic489.q BoundarySemantic489.u
  R := BoundarySemantic489.R
  C := BoundarySemantic489.C
  J := BoundarySemantic489.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic489.A] using BoundarySemantic489.semantic_check
end BoundaryConsumer489

namespace BoundaryConsumer490
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock490.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock490.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic490.q
  U := readMatrix BoundarySemantic490.q BoundarySemantic490.u
  R := BoundarySemantic490.R
  C := BoundarySemantic490.C
  J := BoundarySemantic490.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic490.A] using BoundarySemantic490.semantic_check
end BoundaryConsumer490

namespace BoundaryConsumer491
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock491.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock491.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic491.q
  U := readMatrix BoundarySemantic491.q BoundarySemantic491.u
  R := BoundarySemantic491.R
  C := BoundarySemantic491.C
  J := BoundarySemantic491.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic491.A] using BoundarySemantic491.semantic_check
end BoundaryConsumer491

namespace BoundaryConsumer492
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock492.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock492.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic492.q
  U := readMatrix BoundarySemantic492.q BoundarySemantic492.u
  R := BoundarySemantic492.R
  C := BoundarySemantic492.C
  J := BoundarySemantic492.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic492.A] using BoundarySemantic492.semantic_check
end BoundaryConsumer492

namespace BoundaryConsumer493
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock493.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock493.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic493.q
  U := readMatrix BoundarySemantic493.q BoundarySemantic493.u
  R := BoundarySemantic493.R
  C := BoundarySemantic493.C
  J := BoundarySemantic493.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic493.A] using BoundarySemantic493.semantic_check
end BoundaryConsumer493

namespace BoundaryConsumer494
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock494.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock494.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic494.q
  U := readMatrix BoundarySemantic494.q BoundarySemantic494.u
  R := BoundarySemantic494.R
  C := BoundarySemantic494.C
  J := BoundarySemantic494.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic494.A] using BoundarySemantic494.semantic_check
end BoundaryConsumer494

namespace BoundaryConsumer495
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock495.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock495.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic495.q
  U := readMatrix BoundarySemantic495.q BoundarySemantic495.u
  R := BoundarySemantic495.R
  C := BoundarySemantic495.C
  J := BoundarySemantic495.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic495.A] using BoundarySemantic495.semantic_check
end BoundaryConsumer495

namespace BoundaryConsumer496
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock496.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock496.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic496.q
  U := readMatrix BoundarySemantic496.q BoundarySemantic496.u
  R := BoundarySemantic496.R
  C := BoundarySemantic496.C
  J := BoundarySemantic496.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic496.A] using BoundarySemantic496.semantic_check
end BoundaryConsumer496

namespace BoundaryConsumer497
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock497.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock497.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic497.q
  U := readMatrix BoundarySemantic497.q BoundarySemantic497.u
  R := BoundarySemantic497.R
  C := BoundarySemantic497.C
  J := BoundarySemantic497.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic497.A] using BoundarySemantic497.semantic_check
end BoundaryConsumer497

namespace BoundaryConsumer498
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock498.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock498.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic498.q
  U := readMatrix BoundarySemantic498.q BoundarySemantic498.u
  R := BoundarySemantic498.R
  C := BoundarySemantic498.C
  J := BoundarySemantic498.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic498.A] using BoundarySemantic498.semantic_check
end BoundaryConsumer498

namespace BoundaryConsumer499
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock499.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock499.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic499.q
  U := readMatrix BoundarySemantic499.q BoundarySemantic499.u
  R := BoundarySemantic499.R
  C := BoundarySemantic499.C
  J := BoundarySemantic499.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic499.A] using BoundarySemantic499.semantic_check
end BoundaryConsumer499

namespace BoundaryConsumer500
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock500.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock500.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic500.q
  U := readMatrix BoundarySemantic500.q BoundarySemantic500.u
  R := BoundarySemantic500.R
  C := BoundarySemantic500.C
  J := BoundarySemantic500.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic500.A] using BoundarySemantic500.semantic_check
end BoundaryConsumer500

namespace BoundaryConsumer501
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock501.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock501.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic501.q
  U := readMatrix BoundarySemantic501.q BoundarySemantic501.u
  R := BoundarySemantic501.R
  C := BoundarySemantic501.C
  J := BoundarySemantic501.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic501.A] using BoundarySemantic501.semantic_check
end BoundaryConsumer501

namespace BoundaryConsumer502
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock502.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock502.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic502.q
  U := readMatrix BoundarySemantic502.q BoundarySemantic502.u
  R := BoundarySemantic502.R
  C := BoundarySemantic502.C
  J := BoundarySemantic502.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic502.A] using BoundarySemantic502.semantic_check
end BoundaryConsumer502

namespace BoundaryConsumer503
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock503.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock503.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic503.q
  U := readMatrix BoundarySemantic503.q BoundarySemantic503.u
  R := BoundarySemantic503.R
  C := BoundarySemantic503.C
  J := BoundarySemantic503.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic503.A] using BoundarySemantic503.semantic_check
end BoundaryConsumer503

namespace BoundaryConsumer504
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock504.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock504.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic504.q
  U := readMatrix BoundarySemantic504.q BoundarySemantic504.u
  R := BoundarySemantic504.R
  C := BoundarySemantic504.C
  J := BoundarySemantic504.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic504.A] using BoundarySemantic504.semantic_check
end BoundaryConsumer504

namespace BoundaryConsumer505
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock505.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock505.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic505.q
  U := readMatrix BoundarySemantic505.q BoundarySemantic505.u
  R := BoundarySemantic505.R
  C := BoundarySemantic505.C
  J := BoundarySemantic505.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic505.A] using BoundarySemantic505.semantic_check
end BoundaryConsumer505

namespace BoundaryConsumer506
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock506.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock506.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic506.q
  U := readMatrix BoundarySemantic506.q BoundarySemantic506.u
  R := BoundarySemantic506.R
  C := BoundarySemantic506.C
  J := BoundarySemantic506.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic506.A] using BoundarySemantic506.semantic_check
end BoundaryConsumer506

namespace BoundaryConsumer507
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock507.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock507.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic507.q
  U := readMatrix BoundarySemantic507.q BoundarySemantic507.u
  R := BoundarySemantic507.R
  C := BoundarySemantic507.C
  J := BoundarySemantic507.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic507.A] using BoundarySemantic507.semantic_check
end BoundaryConsumer507

namespace BoundaryConsumer508
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock508.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock508.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic508.q
  U := readMatrix BoundarySemantic508.q BoundarySemantic508.u
  R := BoundarySemantic508.R
  C := BoundarySemantic508.C
  J := BoundarySemantic508.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic508.A] using BoundarySemantic508.semantic_check
end BoundaryConsumer508

namespace BoundaryConsumer509
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock509.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock509.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic509.q
  U := readMatrix BoundarySemantic509.q BoundarySemantic509.u
  R := BoundarySemantic509.R
  C := BoundarySemantic509.C
  J := BoundarySemantic509.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic509.A] using BoundarySemantic509.semantic_check
end BoundaryConsumer509

namespace BoundaryConsumer510
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock510.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock510.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic510.q
  U := readMatrix BoundarySemantic510.q BoundarySemantic510.u
  R := BoundarySemantic510.R
  C := BoundarySemantic510.C
  J := BoundarySemantic510.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic510.A] using BoundarySemantic510.semantic_check
end BoundaryConsumer510

namespace BoundaryConsumer511
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock511.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock511.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic511.q
  U := readMatrix BoundarySemantic511.q BoundarySemantic511.u
  R := BoundarySemantic511.R
  C := BoundarySemantic511.C
  J := BoundarySemantic511.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic511.A] using BoundarySemantic511.semantic_check
end BoundaryConsumer511

namespace BoundaryConsumer512
open BoundaryCertifiedCore VascCertificate.Gram VascCertificate.Polynomial
/-- Exponents and mask are decoded from exactly the checked source record. -/
def exponentRows : Array (Array Nat) := (BoundaryCheckedBlock512.data.basis.map List.toArray).toArray
def maskArray : Array Nat := BoundaryCheckedBlock512.data.mask.toArray
def block : Block 10 := {
  q := BoundarySemantic512.q
  U := readMatrix BoundarySemantic512.q BoundarySemantic512.u
  R := BoundarySemantic512.R
  C := BoundarySemantic512.C
  J := BoundarySemantic512.J
  E := fun a i => (exponentRows[a.val]!)[i.val]!
  mask := fun i => maskArray[i.val]!
}
theorem block_certified : blockCheck block = true := by
  simpa only [blockCheck, block, BoundarySemantic512.A] using BoundarySemantic512.semantic_check
end BoundaryConsumer512

