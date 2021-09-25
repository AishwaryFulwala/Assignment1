enum oeError: Error {
  case neg

  var msg: String {
    switch self {
      case .neg: return "ERROR: Number must be Positive."
    }
  }
}

func oddeven(n: Int = 0) throws{
  if n<0 {
    throw oeError.neg
  }
  else if (n%2)==0 {
    print("\(n) is Even.")
  }
  else {
    print("\(n) is ODD.")
  }    
}

do {
  let no = Int(readLine()!) ?? 0
  try oddeven(n: no)
} catch {
  if let e = error as? oeError {
    print(e.msg)
  }
}