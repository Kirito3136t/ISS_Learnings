import React, { useContext } from 'react'
import Card from './shared/Card'
import { FaTimes, FaEdit } from 'react-icons/fa'
import FeedbackContext from '../context/FeedbackContext'

function FeedbackItem({item}) {
  const {handleDelete} = useContext(FeedbackContext);

  return (
    <Card>
        <button onClick={()=>{handleDelete(item.id)}} className='close'>
            <FaTimes color='purple'/>
        </button>
        <button className='edit'>
          <FaEdit color='purple'/>
        </button>
        <div className='num-display'>{item.rating}</div>
        <div className='text-display'>{item.text}</div>
    </Card>
  )
}

export default FeedbackItem