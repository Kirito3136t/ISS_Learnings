import React, { useContext, useState } from 'react'
import Card from './shared/Card'
import Button from './shared/Button';
import RatingSelect from './RatingSelect';
import FeedbackContext from '../context/FeedbackContext';

function FeedbackForm() {
  const [text,setText] = useState('');
  const [message,setMessage] = useState();
  const [rating, setRating] = useState(10);
  const [btnDisabled, setBtnDisabled] = useState(true);

  const {addFeedback} = useContext(FeedbackContext);

  const handleTextChange = (e) => {
    if(text === ''){
      setMessage(null);
      setBtnDisabled(true);
    }else if(text !== '' && text.trim().length <= 10){
      setMessage('Text must be at least 10 characters')
      setBtnDisabled(true)
    }else{
      setBtnDisabled(false);
      setMessage(null);
    }

    setText(e.target.value);
  }

  const handleSubmit=(e)=>{
    e.preventDefault();
    if(text.trim().length > 10){
      const newFeedback = {
        text:text,
        rating:rating
      }

      addFeedback(newFeedback);
      
      setText('');
    }
  }

  return (
    <Card>
        <form onSubmit={handleSubmit}>
          <h2>How would you rate our service?</h2>
          <RatingSelect select={(rating)=> setRating(rating)}/>
          <div className="input-group">
            <input type='text' value={text} onChange={handleTextChange} placeholder='Add a review'/>
            <Button type='submit' isDisabled={btnDisabled}>
              Send
            </Button>
          </div>
          {message && <div className='message'>{message}</div> }
        </form>
    </Card>
  )
}

export default FeedbackForm