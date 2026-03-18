import React from 'react'

function Button({children,type='submit',version='primary',isDisabled=false}) {
  return (
    <button disabled={isDisabled} type={type} className={`btn btn-${version}`}>
        {children}
    </button>
  )
}

export default Button