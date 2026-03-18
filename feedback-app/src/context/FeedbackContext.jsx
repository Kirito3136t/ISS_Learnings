import { createContext, useState } from "react";
import FeedbackData from "../data/FeedbackData";

import {v4 as uuidv4} from 'uuid'

const FeedbackContext = createContext();

export const FeedbackProvider = ({children}) => {

    const [feedback,setFeedback] = useState(FeedbackData);
    const [feedbackEdit, setEditFeedback] = useState({
        item:{},

    });

    const handleDelete = (id) => {
        if(window.confirm("Are you sure want to exit?")){
            setFeedback(feedback.filter((item)=>{
                return item.id !== id;
            }))
        }
    };

    const addFeedback = (newFeedback) => {
        newFeedback.id = uuidv4();
        setFeedback([newFeedback,...feedback]);
    }

    return <FeedbackContext.Provider value={{
        feedback,
        handleDelete,
        addFeedback
    }}>
        {children}
    </FeedbackContext.Provider>
}

export default FeedbackContext;